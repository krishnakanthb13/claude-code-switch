# Social Media Announcements

## [v0.0.1] - 2026-06-19

### 💼 LinkedIn
Are you using Claude Code but constantly switching between different API providers like direct Anthropic, OpenRouter, and Longcat? Manually editing environment variables and configuration files can break your developer flow.

Introducing Claude Code Profile Switcher, a lightweight utility designed to make profile management seamless on Windows!

🚀 Key Features:
• Right-Click Explorer Integration: Launch Claude Code on any directory with a specific provider profile directly from the Windows context menu.
• Interactive Terminal Picker: A simple batch-based CLI prompt to choose your profile when opening a project.
• Quick CLI Switching: Swap active profiles on the fly with a simple `ccswitch <profile>` command in CMD or PowerShell.
• Zero-Config Profiles: Drop a new JSON configuration into the profiles folder, and it automatically registers in your picker menu.

Whether you're testing different models on OpenRouter, utilizing Longcat, or running direct Anthropic APIs, you can now swap setups instantly and keep coding.

Check out the repository, star it, and streamline your workflow today!

#ClaudeCode #OpenSource #DeveloperTools #Productivity #WindowsDev #WebDevelopment

---

### 🌐 Reddit
**Suggested Subreddits:** r/programming, r/webdev, r/commandline, r/opensource, r/ClaudeAI, r/LocalLLaMA

**Post Title:** Show Reddit: A lightweight Windows profile switcher for Claude Code (Anthropic, OpenRouter, Longcat)

**Post Body:**
Hey everyone!

I love using **Claude Code**, but I frequently find myself wanting to switch between different API backends—like switching from direct Anthropic to OpenRouter (to test other models) or Longcat. 

Manually editing `.env` or system environment variables every time got old really fast, so I put together **Claude Code Profile Switcher**—a lightweight, zero-dependency Windows helper.

### 🛠️ What it does:
1. **Right-Click "Open with Claude Code"**: Right-click any folder in Windows Explorer to open a prompt asking which provider profile to run Claude Code with.
2. **`ccswitch <profile>`**: A quick command-line utility for CMD/PowerShell to swap the active profile globally without launching the agent.
3. **Dynamic Discovery**: To add a new profile, you just drop a JSON file with the environment overrides in the `profiles/` directory. No code changes required.

### 📁 How it works under the hood:
- It uses Windows Registry keys (`.reg`) to hook into the directory context menu.
- A central batch script (`ccpick.bat`) dynamically scans the `profiles/*.json` folder structure, builds the CLI menu, parses the chosen JSON to extract the environment variables, and copies them to the active `.settings.json` before initiating `claude`.
- `ccswitch.bat` lets you swap them statically or clear back to Anthropic defaults (`ccswitch default`).

It's completely free, open-source, and has zero external runtime dependencies. 

Check out the code, setup instructions, and default profiles here:
[GitHub Repository](https://github.com/krishnakanthb13/claude-code-switch)

Feedback and PRs are very welcome!

---

### 🐦 X (Twitter)
Need to switch Claude Code between OpenRouter, Longcat, and Anthropic on Windows?

Say goodbye to manually swapping API keys/URLs. Meet Claude Code Profile Switcher—switch profiles in 1 click from your right-click context menu or terminal! 🚀

Check it out: https://github.com/krishnakanthb13/claude-code-switch
