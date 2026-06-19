# Design Philosophy

This document outlines the core tenets and design ideology behind the Claude Code Profile Switcher.

---

## 1. Zero Dependency & Native Integration

The primary design goal is **simplicity**. 
- Instead of building a complex binary launcher, Node.js wrapper, or Python utility, we leverage native Windows components: **Batch scripting (.bat)** and **Registry configurations (.reg)**.
- This ensures execution is fast, consumes zero additional resources, and works natively on any Windows system out-of-the-box.

## 2. Declarative Profile Management

Adding a new API provider or setting profile should require **zero code changes**.
- The profile picker (`ccpick.bat`) dynamically scans the directory at runtime.
- New profiles are created by dropping a new `.json` file into the `profiles/` folder. The script automatically picks up the new filename and populates the menu.

## 3. Keyboard-Driven UX

A developer's productivity is directly linked to staying on the keyboard.
- The interactive menu is fully keyboard-driven (press `1`, `2`, `0` etc. and `Enter`).
- The terminal-only mode (`ccswitch`) integrates cleanly into existing command line workflows and shells (CMD/PowerShell) without interrupting existing session scopes.

## 4. Portability

Where possible, avoid hardcoded system paths.
- Scripts resolve configuration folders relative to the user's home directory (`%USERPROFILE%`).
- This makes script files fully portable across different machines and users.
