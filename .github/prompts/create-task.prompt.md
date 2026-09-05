---
name: "Create Task"
description: "Create or prepare an Azure DevOps Task through the Technical Product Owner agent. Use when a request needs Task scoping, research, review, or creation."
argument-hint: "Describe the requested Task or Tasks, including the parent work item ID and relevant repositories when known."
agent: "Technical Product Owner"
---

Use the `create-task` skill to prepare or create Azure DevOps Task items from the user's input.

Follow the skill completely. The Technical Product Owner agent must research incomplete task details, preserve supplied numeric execution-order prefixes, apply the linked field-format instructions, obtain explicit review approval, and only then create the Azure DevOps Task items.

User request:

${input:request}
