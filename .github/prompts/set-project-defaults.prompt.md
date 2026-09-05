---
name: "Set Project Defaults"
description: "Set the default Azure DevOps Project, Area Path, and Iteration Path used when creating user stories. Use when configuring or updating project defaults."
argument-hint: "Project=<project>; Area Path=<area>; Iteration Path=<iteration>"
agent: "agent"
tools: [read, edit]
---

Update [Azure DevOps project defaults](../config/project-defaults.md) with the values supplied in the user's input.

The file must contain values for:

- Project
- Area Path
- Iteration Path

Use supplied values exactly. If any value is absent, ask the user only for the missing value or values before editing. Do not infer values from repository names, prior context, or Azure DevOps.

Preserve the file's heading, explanatory text, and table structure. Update only the `Default value` cells. After saving, report the configured Project, Area Path, and Iteration Path.
