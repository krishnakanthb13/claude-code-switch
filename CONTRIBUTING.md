# Contributing to Claude Code Profile Switcher

Thank you for your interest in improving the Claude Code Profile Switcher! We welcome all contributions, from bug reports to new features.

---

## 1. How to Report a Bug
If you encounter any issues, please submit a bug report via GitHub Issues. Please include:
* A clear description of the problem.
* The specific Windows version and terminal shell (CMD, PowerShell, Git Bash, etc.) you are using.
* Steps to reproduce the bug.
* The contents of any error messages.

## 2. How to Propose a Feature
We welcome suggestions for new features! To propose one, open a GitHub Issue and explain:
* The goal of the feature and how it works.
* Why this feature is useful to other developers.
* Any design details or script ideas you might have.

## 3. Contribution Workflow
Please follow this standard workflow:
1. **Fork** the repository: [krishnakanthb13/claude-code-switch](https://github.com/krishnakanthb13/claude-code-switch)
2. **Clone** your fork locally.
3. Create a new **branch** for your feature or bug fix:
   ```cmd
   git checkout -b feature/your-feature-name
   ```
4. Make your changes and commit them with descriptive commit messages.
5. **Push** your branch to your fork.
6. Open a **Pull Request (PR)** against our `main` branch.

## 4. Local Development Setup
To test your changes locally:
1. Copy your modified batch files (`ccpick.bat`, `ccswitch.bat`) to your `%USERPROFILE%\.claude\` directory.
2. Verify that the picker and switcher function as expected in your target shell.
3. If modifying registry entries, double-check that the generated registry keys match on import/export.

## 5. Pre-Submission Checklist
Before submitting a PR, make sure:
- [ ] No temporary files or secrets are tracked (check your `git status`).
- [ ] Links and file paths in the documentation are fully functional.
- [ ] You have tested the changes natively in CMD and PowerShell on Windows.
