---
name: create-task
description: "Create well-scoped Azure DevOps Tasks, usually as child items of an existing work item. Use when preparing or creating implementation tasks with ordered names, repository research, required task fields, and review before creation."
argument-hint: "Describe the task or tasks, including parent work item ID, ordered task names, required fields, and relevant repositories when known."
user-invocable: true
---

# Create Azure DevOps Tasks

Create complete, actionable Azure DevOps Tasks. Tasks commonly belong to a parent work item. Do not create any Azure DevOps task until the user reviews and approves every populated field.

## Required Inputs

Establish these values before preparing each task:

- Task name
- Parent work item ID when the task is a child item
- Description
- Priority
- Activity
- Original Estimate
- Remaining Work

Retain a numeric prefix supplied in a task name exactly as given. The prefix determines creation order; create ordered tasks in ascending numeric-prefix order. Do not add, remove, or renumber a supplied prefix.

If a parent work item ID is required but absent, ask the user for it. Do not infer or select a parent.

## Information and Research

1. Use comprehensive information supplied by the user to populate each task directly.
2. When the supplied information is incomplete, identify which fields or implementation details are missing.
3. Research each referenced GitHub or Azure DevOps repository to establish the affected components, paths, dependencies, tests, configuration, documentation, and operational work.
4. Use the parent work item, when provided, for scope and dependency context. Check sibling child items when available to avoid duplicate or overlapping tasks.
5. If the task may involve a code change and no repository is supplied or identifiable from the parent context, ask the user for the relevant repository or repositories.
6. Do not invent repository impacts, Priority, Activity, Original Estimate, or Remaining Work. Ask the user for values that cannot be established from supplied information or approved conventions.

## Task Fields

Prepare all required fields for every task:

- Title
- Parent work item ID, when applicable
- Description
- Priority
- Activity
- Original Estimate
- Remaining Work

Format `Description` according to the applicable workspace instruction: `What`, `Why`, `How`, then `Threat Model`. The `How` section must identify each affected repository and required work in it.

Preserve task ordering in the title. Use the numeric prefix as supplied; do not use the Azure DevOps task hierarchy or identifier as a substitute for the requested ordering.

## Review and Creation

Before creating tasks, present every task in creation order with:

- Title, including the preserved numeric prefix
- Parent work item relationship
- All required fields
- Repository evidence and scope boundaries
- Dependencies, assumptions, and unresolved questions

Ask for explicit approval. Only after approval, create each Azure DevOps Task and set its parent relationship when provided. Report the resulting task identifiers and links in creation order.

## Completion Check

Do not consider the workflow complete until:

- Every task retains its supplied numeric name prefix
- The parent relationship is set for each child task that requires one
- Description, Priority, Activity, Original Estimate, and Remaining Work are populated
- Description follows the workspace format instruction
- Repository research informs incomplete task details, or required inputs were obtained from the user
- The user reviewed and approved all task fields before the Azure DevOps write
- Created task identifiers and links are reported in the requested order
