# Copilot Agent: Technical Product Owner

A workspace-level GitHub Copilot customization for researching scope and creating Azure DevOps User Stories and Tasks. Work-item creation uses the Technical Product Owner agent, applies the configured field formats, and requires review before any external write.

## Setup

1. Open this repository in Visual Studio Code with GitHub Copilot enabled.
2. Configure your local Azure DevOps defaults by running `/Set Project Defaults` in Copilot Chat.
3. Supply the values in this format:

	```text
	Project=<project>; Area Path=<area>; Iteration Path=<iteration>
	```

The command creates `.github/config/project-defaults.md` from `.github/config/project-defaults.example.md` when needed, then stores the values in the local defaults file. The local file is ignored by Git so each user can keep their own Azure DevOps defaults without committing them.

## Create Work Items

### User Stories

Run `/Create User Story` and describe the requested outcome. Include the parent Feature ID and relevant GitHub or Azure DevOps repositories when known.

The prompt uses the Technical Product Owner agent and `create-user-story` skill to research the Feature, sibling stories, repositories, and wiki content. It applies the configured Project, Area Path, and Iteration Path when they are not supplied, then presents every populated field for approval before creating the User Story.

### Tasks

Run `/Create Task` and describe the requested Task or Tasks. Include the parent work item ID and relevant repositories when known.

The prompt uses the Technical Product Owner agent and `create-task` skill to research incomplete details, populate required task fields, and present the final items for approval before creation. When creating multiple related tasks, provide or accept numeric title prefixes such as `1.`, `2.`, and `3.` to represent execution order.

## Work Item Conventions

- Descriptions use `What`, `Why`, `How`, and a final Threat Model table.
- Acceptance criteria are observable, testable bullet points.
- Azure DevOps User Stories and Tasks are reviewed with the user before creation.
