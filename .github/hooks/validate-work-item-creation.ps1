$hookInput = [Console]::In.ReadToEnd() | ConvertFrom-Json
$toolName = [string]$hookInput.tool_name

$creationTools = @(
    'github/issue_write',
    'azure-devops/wit_work_item_write'
)

if ($creationTools -contains $toolName) {
    @{
        hookSpecificOutput = @{
            hookEventName = 'PreToolUse'
            permissionDecision = 'ask'
            permissionDecisionReason = 'Confirm that you reviewed and approve every proposed work item or issue field before creation.'
        }
    } | ConvertTo-Json -Compress
    exit 0
}

@{
    hookSpecificOutput = @{
        hookEventName = 'PreToolUse'
        permissionDecision = 'allow'
    }
} | ConvertTo-Json -Compress
