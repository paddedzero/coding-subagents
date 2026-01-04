# Agent Conversion Script
$categoryMapping = @{
    "01-core-development" = "core-"
    "02-language-specialists" = "lang-"
    "03-infrastructure" = "infra-"
    "04-quality-security" = "quality-"
    "05-data-ai" = "data-"
    "06-developer-experience" = "devex-"
    "07-specialized-domains" = "domain-"
    "08-business-product" = "biz-"
    "09-meta-orchestration" = "meta-"
    "10-research-analysis" = "research-"
}

$toolMapping = @{
    "Read" = "read"
    "Write" = "write"
    "Edit" = "write"
    "Bash" = "terminal"
    "Glob" = "search"
    "Grep" = "search"
}

function Convert-Tools {
    param([string]$toolsString)
    
    $tools = $toolsString -split ',\s*'
    $convertedTools = @()
    
    foreach ($tool in $tools) {
        if ($toolMapping.ContainsKey($tool)) {
            $convertedTool = $toolMapping[$tool]
            if ($convertedTools -notcontains $convertedTool) {
                $convertedTools += $convertedTool
            }
        }
    }
    
    return '["' + ($convertedTools -join '", "') + '"]'
}

function Remove-CommunicationSections {
    param([string[]]$lines)
    
    $result = @()
    $skipMode = $false
    $inCodeBlock = $false
    
    for ($i = 0; $i -lt $lines.Count; $i++) {
        $line = $lines[$i]
        
        # Check for Communication Protocol section
        if ($line -match '^## Communication Protocol') {
            # Skip until next ## heading or end of file
            $skipMode = $true
            continue
        }
        
        # Check if we hit another ## section (end of Communication Protocol)
        if ($skipMode -and $line -match '^## ' -and $line -notmatch '^## Communication Protocol') {
            $skipMode = $false
        }
        
        # Track code blocks to remove JSON examples
        if ($line -match '^```') {
            $inCodeBlock = -not $inCodeBlock
            # Check if this is a JSON code block - peek ahead
            if ($inCodeBlock -and $i + 1 -lt $lines.Count) {
                $nextLine = $lines[$i + 1]
                if ($line -match '```json' -or $nextLine -match '"requesting_agent"') {
                    # This is likely an agent communication JSON block
                    while ($i -lt $lines.Count -and $lines[$i] -notmatch '^```$') {
                        $i++
                    }
                    $i++ # Skip closing ```
                    continue
                }
            }
        }
        
        if (-not $skipMode) {
            $result += $line
        }
    }
    
    return $result
}

function Simplify-Integration {
    param([string[]]$lines)
    
    $result = @()
    $skipIntegration = $false
    
    for ($i = 0; $i -lt $lines.Count; $i++) {
        $line = $lines[$i]
        
        # Check for integration section
        if ($line -match '^Integration with other agents:') {
            # Replace with simplified version
            $result += ""
            $result += "## Collaboration"
            $result += ""
            $result += "This agent works effectively alongside other specialized agents. Coordinate with relevant specialists (backend, frontend, security, etc.) as needed for comprehensive solutions."
            $result += ""
            
            # Skip until we hit next section or empty lines followed by non-list content
            $skipIntegration = $true
            continue
        }
        
        if ($skipIntegration) {
            # Skip bullet points
            if ($line -match '^- ') {
                continue
            }
            # If we hit content that'\''s not a list item, stop skipping
            if ($line -match '\S' -and $line -notmatch '^- ') {
                $skipIntegration = $false
            }
        }
        
        if (-not $skipIntegration) {
            $result += $line
        }
    }
    
    return $result
}

function Convert-AgentFile {
    param(
        [string]$sourcePath,
        [string]$targetPath
    )
    
    $content = Get-Content $sourcePath -Raw -Encoding UTF8
    $lines = $content -split "`r?`n"
    
    # Extract and convert frontmatter
    $frontmatterEnd = -1
    for ($i = 1; $i -lt $lines.Count; $i++) {
        if ($lines[$i] -match '^---$') {
            $frontmatterEnd = $i
            break
        }
    }
    
    if ($frontmatterEnd -gt 0) {
        $frontmatter = @()
        $frontmatter += "---"
        
        for ($i = 1; $i -lt $frontmatterEnd; $i++) {
            $line = $lines[$i]
            if ($line -match '^tools:\s*(.+)') {
                $toolsString = $matches[1]
                $convertedTools = Convert-Tools $toolsString
                $frontmatter += "tools: $convertedTools"
            } else {
                $frontmatter += $line
            }
        }
        
        $frontmatter += "---"
        
        # Get content after frontmatter
        $contentLines = $lines[($frontmatterEnd + 1)..($lines.Count - 1)]
        
        # Remove Communication Protocol sections
        $contentLines = Remove-CommunicationSections $contentLines
        
        # Simplify Integration sections
        $contentLines = Simplify-Integration $contentLines
        
        # Combine
        $finalContent = $frontmatter + $contentLines
        
        # Write to target file
        $finalContent -join "`n" | Out-File -FilePath $targetPath -Encoding UTF8 -NoNewline
        
        return $true
    }
    
    return $false
}

# Get all .md files except README.md
$categoriesPath = "d:\Research\coding-subagents\categories"
$sourceFiles = Get-ChildItem -Path $categoriesPath -Recurse -Filter "*.md" | 
    Where-Object { $_.Name -ne "README.md" }

$converted = 0
$failed = 0

foreach ($file in $sourceFiles) {
    # Get the parent folder name (category)
    $category = $file.Directory.Name
    
    if ($categoryMapping.ContainsKey($category)) {
        $prefix = $categoryMapping[$category]
        $baseName = $file.BaseName
        $targetName = "$prefix$baseName.agent.md"
        $targetPath = "d:\Research\coding-subagents\copilot-github-agents\$targetName"
        
        Write-Host "Converting: $($file.Name) -> $targetName"
        
        if (Convert-AgentFile -sourcePath $file.FullName -targetPath $targetPath) {
            $converted++
        } else {
            Write-Host "  Failed to convert $($file.Name)" -ForegroundColor Red
            $failed++
        }
    }
}

Write-Host "`nConversion complete: $converted converted, $failed failed" -ForegroundColor Green
