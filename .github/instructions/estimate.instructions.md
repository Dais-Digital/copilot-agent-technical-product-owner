---
name: "Estimate"
description: "Use when setting Original Estimate and Remaining Work for an Azure DevOps Task. Requires a best-effort estimate in hours based on available information."
---

# Estimate Format

Set `Original Estimate` and `Remaining Work` in hours, using the best-effort estimate available at task-creation time.

- Base the estimate on the task's concrete scope: the number and complexity of files, components, or pages it touches, the repository research completed for it, and the type of work involved (code change, test authoring, or a manual/operational action).
- Estimate manual, non-code actions (for example, registering a domain in an external portal or submitting a sitemap) in fractions of an hour reflecting the real time the action takes, not a full working day.
- Widen the estimate for a task that depends on unresolved requirements or an unfamiliar system to reflect that uncertainty, rather than leaving it blank.
- Set `Remaining Work` equal to `Original Estimate` when the task is newly created and no work has started.
- Always provide a best-effort estimate rather than asking the user for one. State the reasoning briefly so the estimate can be corrected once real effort or team velocity data is available.
