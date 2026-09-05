---
name: "Set Project Defaults"
description: "Set the default Azure DevOps Project, Area Path, and Iteration Path used when creating user stories. Use when configuring or updating project defaults."
argument-hint: "Project=<project>; Area Path=<area>; Iteration Path=<iteration>"
agent: "agent"
tools: [read, edit]
---

If [Azure DevOps project defaults](../config/project-defaults.md) does not exist, create it by copying the heading, explanatory text, and table structure from [the defaults example](../config/project-defaults.example.md). Then update the local defaults file with the values supplied in the user's input.

The file must contain values for:

- Project
- Area Path
- Iteration Path

Use supplied values exactly. If any value is absent, ask the user only for the missing value or values before editing. Do not infer values from repository names, prior context, or Azure DevOps.

Preserve the local defaults file's heading, explanatory text, and table structure. Update only the `Default value` cells. Do not modify the example file. After saving, report the configured Project, Area Path, and Iteration Path.
