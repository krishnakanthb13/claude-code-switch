# Release Notes

## [v0.0.1] - 2026-06-19

### 🚀 New Features
- **Right-Click Context Menu Integration**: Adds an "Open with Claude Code" option to Windows Explorer for instant project loading.
- **Interactive Profile Picker (`ccpick.bat`)**: Dynamically lists and switches between Claude Code configurations (Longcat, OpenRouter, direct Anthropic).
- **Terminal Switcher (`ccswitch.bat`)**: Quick CLI command to switch profiles directly from standard shells without launching the agent.
- **Dynamic Configuration Loading**: Scan-based profile detection that automatically recognizes new JSON profiles in the `profiles/` directory with zero manual updates.

### 📚 Documentation
- **Getting Started Guides**: Comprehensive installation, environment setup, and troubleshooting instructions in [README.md](file:///c:/Users/ADMIN/OneDrive/Documents/GitHub/claude-code-switch/README.md).
- **Core Architecture & Philosophy**: Documented codebase structure and design choices in [CODE_DOCUMENTATION.md](file:///c:/Users/ADMIN/OneDrive/Documents/GitHub/claude-code-switch/CODE_DOCUMENTATION.md) and [DESIGN_PHILOSOPHY.md](file:///c:/Users/ADMIN/OneDrive/Documents/GitHub/claude-code-switch/DESIGN_PHILOSOPHY.md).
- **Default Providers**: Ships with pre-configured profiles for [Longcat](file:///c:/Users/ADMIN/OneDrive/Documents/GitHub/claude-code-switch/profiles/longcat.json) and [OpenRouter](file:///c:/Users/ADMIN/OneDrive/Documents/GitHub/claude-code-switch/profiles/openrouter.json).
