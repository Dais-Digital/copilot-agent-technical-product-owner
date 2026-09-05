---
name: "Description"
description: "Use when drafting, scoping, reviewing, or creating Azure DevOps work items or GitHub issues. Requires all work item descriptions in the What, Why, How format, including repository-specific implementation guidance and a threat model."
---

# Description Format

Every Azure DevOps work item and GitHub issue description must use these headings, in this order:

## What

Describe the work to be carried out. State the expected capability or change clearly and concretely.

## Why

Explain why the work is required and the impact or value it delivers. Identify the user, business, operational, technical, or risk-reduction outcome where known.

## How

Provide implementation guidance grounded in repository research. For every repository affected, include:

- Repository name and link or identifier
- Relevant component, service, project, path, or module
- Work required in that repository
- Relevant dependencies, interfaces, migrations, configuration, tests, or documentation updates

Do not invent repository work. If repository impact is unknown, state the discovery needed to determine it.

## Threat Model

End every work item description with a threat model table using these headings:

| Category | Threat | Mitigation |
| --- | --- | --- |
| [Threat category] | [Relevant threat] | [Planned mitigation] |

Include the threats that are relevant to the scoped work and their concrete mitigations. If no material threat is identified, add a row that states this and explains why.
