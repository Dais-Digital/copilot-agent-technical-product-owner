---
name: create-user-story
description: "Create a well-scoped Azure DevOps User Story from a user's request. Use when creating or preparing an Azure DevOps user story, including parent Feature research, sibling-story overlap checks, wiki and repository research, required fields, child-task planning, and a user review before creation."
argument-hint: "Describe the requested user story, including Azure DevOps project, area, iteration, parent Feature ID, and relevant repositories when known."
user-invocable: true
---

# Create Azure DevOps User Story

Create a complete, evidence-based Azure DevOps User Story. Do not create any Azure DevOps item until the user reviews and approves every populated field.

## Required Inputs

Establish these values before drafting the final story:

- Requested outcome and intended user or business value
- Azure DevOps Project, Area Path, and Iteration Path
- Parent Feature ID
- Related GitHub and Azure DevOps repositories, unless the request is clearly not a code change

Read [project defaults](../../config/project-defaults.md) when Project, Area Path, or Iteration Path is absent from the request. Use each configured default. If a required default is `Not configured`, prompt the user for that value.

If the parent Feature ID is not provided, prompt the user for it. Do not infer or select a Feature.

If the request may require code changes and no related repositories are supplied, prompt the user to identify them. Repositories are optional only when the work is demonstrably non-code work.

## Research Workflow

1. Read the parent Feature to understand its objective, scope, acceptance criteria, linked work, and constraints.
2. Read sibling User Stories under the parent Feature. Identify overlap, existing ownership, shared dependencies, and related work that should remain out of scope.
3. Search Azure DevOps wikis for relevant ADRs, architecture, standards, or process guidance.
4. Search all supplied GitHub and Azure DevOps repositories. Use code, configuration, tests, documentation, and existing work items as evidence for the implementation guidance.
5. Search Azure DevOps for duplicate or substantially overlapping work items before drafting.
6. Define explicit in-scope and out-of-scope boundaries. Link to related, dependent, or out-of-scope work items when they exist; do not create duplicates.
7. Ask focused clarifying questions for any information that cannot be established from the request or research.

## User Story Fields

Prepare all of these fields:

- Title
- Project
- Area Path
- Iteration Path
- Parent Feature ID
- Description
- Acceptance Criteria
- Story Points
- Risk
- Priority
- Value Area

Format `Description` according to the applicable workspace instruction: `What`, `Why`, `How`, then `Threat Model`. The `How` section must identify each affected repository and the required work in it.

Format `Acceptance Criteria` according to the applicable workspace instruction as a bulleted list of observable, testable outcomes.

Do not invent Story Points, Risk, Priority, Value Area, links, or repository impacts. Obtain missing values from the user or record them as unresolved before review.

## Child Tasks

Break the approved User Story into independently actionable child tasks. Each task must have a clear outcome, repository or operational context, dependencies, and completion criteria.

Prefix each child task name with its execution order, using ascending numeric values such as `1.`, `2.`, and `3.`. Determine the order from task dependencies and the intended implementation sequence. Preserve these numeric prefixes when passing child tasks to the `create-task` skill.

Use the `create-task` skill to prepare and create each child task after the User Story has been created. The `create-task` skill is a required follow-on dependency; if it is not yet available, present the proposed task breakdown and state that child-task creation is pending that skill.

## Review and Creation

Before creating the User Story, present every populated field in a reviewable form, including:

- Parent Feature and sibling-story findings
- Repository and wiki evidence
- Scope boundaries and links to related or dependent work
- Proposed child-task breakdown
- Assumptions and unresolved questions

Ask for explicit approval. Only after approval, create the Azure DevOps User Story, set its parent Feature relationship, and report the resulting item identifier and link.

After creation, invoke the `create-task` skill for the approved child-task breakdown when that skill is available.

## Completion Check

Do not consider the workflow complete until:

- Project, Area Path, Iteration Path, and parent Feature are set
- Parent, sibling, wiki, repository, and duplicate research is reflected in the scope
- Description and Acceptance Criteria follow workspace instructions
- Story Points, Risk, Priority, and Value Area are populated
- The user reviewed and approved all fields before the Azure DevOps write
- The created User Story identifier and link are reported
- Child tasks are created through the `create-task` skill, or explicitly marked pending because that skill is unavailable
