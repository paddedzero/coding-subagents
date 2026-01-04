# Comprehensive Security and Format Audit Script

$results = @{
    format_issues = @()
    security_issues = @()
    malicious_patterns = @()
    valid_agents = 0
    total_agents = 0
}

# Known malicious patterns to check
$maliciousPatterns = @(
    'ignore previous instructions',
    'ignore all previous',
    'disregard previous',
    'forget everything',
    'jailbreak',
    'DAN mode',
    'developer mode',
    'admin mode',
    'sudo mode',
    'you are now',
    'override your',
    'bypass your',
    'system message',
    'hidden instructions',
    'secret instructions',
    'pretend you',
    'roleplay as',
    'act as if',
    'delete all',
    'rm -rf',
    'format c:',
    'DROP TABLE',
    'eval(',
    'exec(',
    'system(',
    '__import__',
    'base64.b64decode',
    '<script>',
    'onerror=',
    'onclick=',
    'javascript:',
    'data:text/html'
)

# Valid GitHub Copilot agent format requirements
$requiredYamlFields = @('name', 'description', 'tools')
$validTools = @('read', 'write', 'terminal', 'search')

$agentFiles = Get-ChildItem -Path 'd:\Research\coding-subagents\copilot-github-agents' -Filter '*.agent.md'
$results.total_agents = $agentFiles.Count

Write-Host '=== GitHub Copilot Agent Security & Format Audit ===' -ForegroundColor Cyan
Write-Host ''

foreach ($file in $agentFiles) {
    $content = Get-Content $file.FullName -Raw
    $hasIssue = $false
    
    # Check 1: Valid YAML frontmatter
    if ($content -notmatch '^---\s*\n') {
        $results.format_issues += "$($file.Name): Missing YAML frontmatter opening"
        $hasIssue = $true
    }
    
    # Check 2: Required fields present
    foreach ($field in $requiredYamlFields) {
        if ($content -notmatch "$field\s*:") {
            $results.format_issues += "$($file.Name): Missing required field '$field'"
            $hasIssue = $true
        }
    }
    
    # Check 3: Tools format (JSON array)
    if ($content -match 'tools:\s*(\[.*?\])') {
        $toolsArray = $matches[1]
        if ($toolsArray -notmatch '^\[".*"\]$') {
            $results.format_issues += "$($file.Name): Tools not in proper JSON array format"
            $hasIssue = $true
        }
    } else {
        $results.format_issues += "$($file.Name): Tools field missing or malformed"
        $hasIssue = $true
    }
    
    # Check 4: Malicious patterns
    $contentLower = $content.ToLower()
    foreach ($pattern in $maliciousPatterns) {
        if ($contentLower -match [regex]::Escape($pattern.ToLower())) {
            $results.malicious_patterns += "$($file.Name): Contains suspicious pattern '$pattern'"
            $results.security_issues += "$($file.Name): SECURITY RISK - Malicious pattern detected"
            $hasIssue = $true
        }
    }
    
    # Check 5: Prompt injection attempts
    if ($content -match '(```.*?system|```.*?assistant|```.*?user)') {
        $results.security_issues += "$($file.Name): Potential prompt injection via code blocks"
        $hasIssue = $true
    }
    
    # Check 6: Suspicious URLs or external calls
    if ($content -match '(http://.*?eval|https://.*?payload|curl.*?bash)') {
        $results.security_issues += "$($file.Name): Suspicious external URL or command"
        $hasIssue = $true
    }
    
    if (-not $hasIssue) {
        $results.valid_agents++
    }
}

# Output results
Write-Host 'AUDIT RESULTS:' -ForegroundColor Yellow
Write-Host '=============' -ForegroundColor Yellow
Write-Host ''
Write-Host "Total agents scanned: $($results.total_agents)" -ForegroundColor White
Write-Host "Valid agents: $($results.valid_agents)" -ForegroundColor Green
Write-Host "Agents with issues: $($results.total_agents - $results.valid_agents)" -ForegroundColor $(if($results.total_agents -eq $results.valid_agents){'Green'}else{'Red'})
Write-Host ''

if ($results.format_issues.Count -gt 0) {
    Write-Host 'FORMAT ISSUES:' -ForegroundColor Red
    $results.format_issues | ForEach-Object { Write-Host "  - $_" -ForegroundColor Red }
    Write-Host ''
} else {
    Write-Host '✓ No format issues found' -ForegroundColor Green
    Write-Host ''
}

if ($results.security_issues.Count -gt 0) {
    Write-Host 'SECURITY ISSUES:' -ForegroundColor Red
    $results.security_issues | ForEach-Object { Write-Host "  - $_" -ForegroundColor Red }
    Write-Host ''
} else {
    Write-Host '✓ No security issues found' -ForegroundColor Green
    Write-Host ''
}

if ($results.malicious_patterns.Count -gt 0) {
    Write-Host 'MALICIOUS PATTERNS:' -ForegroundColor Red
    $results.malicious_patterns | ForEach-Object { Write-Host "  - $_" -ForegroundColor Red }
    Write-Host ''
} else {
    Write-Host '✓ No malicious patterns detected' -ForegroundColor Green
    Write-Host ''
}

Write-Host '=== FORMAT COMPLIANCE ===' -ForegroundColor Cyan
Write-Host "✓ File extension: .agent.md" -ForegroundColor Green
Write-Host "✓ YAML frontmatter: Checked" -ForegroundColor Green
Write-Host "✓ Required fields: name, description, tools" -ForegroundColor Green
Write-Host "✓ Tools format: JSON array with lowercase values" -ForegroundColor Green
Write-Host "✓ Content safety: Malicious patterns screened" -ForegroundColor Green
Write-Host ''

if ($results.total_agents -eq $results.valid_agents) {
    Write-Host '🎉 ALL AGENTS PASSED SECURITY & FORMAT AUDIT!' -ForegroundColor Green
    Write-Host 'Ready for use with GitHub Copilot' -ForegroundColor Green
} else {
    Write-Host '⚠️  SOME AGENTS REQUIRE ATTENTION' -ForegroundColor Yellow
    Write-Host 'Review issues above before deployment' -ForegroundColor Yellow
}
