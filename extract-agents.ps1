# Script to extract agent names and descriptions
$agents = @{}

Get-ChildItem -Path "d:\Research\coding-subagents\copilot-github-agents" -Filter "*.agent.md" | ForEach-Object {
    $content = Get-Content $_.FullName -Raw
    if ($content -match '---\s*name:\s*([^\r\n]+)\s*description:\s*([^\r\n]+)') {
        $name = $matches[1].Trim()
        $desc = $matches[2].Trim()
        $agents[$_.BaseName] = @{
            name = $name
            description = $desc
        }
    }
}

# Group by prefix
$grouped = @{
    "core" = @()
    "lang" = @()
    "infra" = @()
    "quality" = @()
    "data" = @()
    "devex" = @()
    "domain" = @()
    "biz" = @()
    "meta" = @()
    "research" = @()
}

foreach ($key in $agents.Keys | Sort-Object) {
    $prefix = $key -replace '-.*$', ''
    if ($grouped.ContainsKey($prefix)) {
        $grouped[$prefix] += @{
            key = $key
            name = $agents[$key].name
            description = $agents[$key].description
        }
    }
}

# Output JSON for processing
$grouped | ConvertTo-Json -Depth 10 | Out-File "d:\Research\coding-subagents\agents-data.json" -Encoding UTF8
