---
name: "Create User Story"
description: "Create or prepare an Azure DevOps User Story through the Technical Product Owner agent. Use when a request needs User Story scoping, research, review, or creation."
argument-hint: "Describe the requested User Story, including the parent Feature ID and relevant repositories when known."
agent: "Technical Product Owner"
---

Use the `create-user-story` skill to prepare or create an Azure DevOps User Story from the user's input.

Follow the skill completely. The Technical Product Owner agent must perform the required research, apply the linked field-format instructions and project defaults, obtain explicit review approval, and only then create the Azure DevOps User Story.

User request:

${input:request}
