---
name: "Story Points"
description: "Use when estimating Story Points for an Azure DevOps User Story or Task. Requires Fibonacci-based complexity estimation."
---

# Story Points Format

Estimate Story Points as an abstract measure of complexity using Fibonacci numbers: 1, 2, 3, 5, 8, 13.

- **1** — Simple task, no code change.
- **2** — More complicated, such as a configuration change; may require test or validation.
- **3** — Simple code change requiring full CI/CD.
- **5** — More complicated code change.
- **8** — More complicated cross-repository or multi-discipline change, for example code and infrastructure-as-code.
- **13** — Highly complicated. Consider breaking the work down into smaller work items instead of using this value.

Base the estimate on complexity, not effort or duration. Do not invent an estimate without evidence from repository research or user input; ask when the complexity cannot be established.
