# AGENTS.md

## What this is

WezTerm terminal emulator configuration. Not a software project.

## Structure

- `wezterm.lua` — main config (imports theme, keybindings, tab bar, font, Wayland)
- `themes/Eldritch.lua` — custom color theme

## Key settings

- Wayland backend forced (`config.enable_wayland = true`)
- Font: JetBrainsMono Nerd Font, 11pt, DemiBold, italic
- Tab bar at bottom, hidden when single tab
- Theme colors hardcoded in `themes/Eldritch.lua`; active tab is green (`#37f499`)

## Keybindings

| Shortcut | Action |
|---|---|
| `Ctrl+Alt+H` | Split vertical |
| `Ctrl+Alt+V` | Split horizontal |
| `Ctrl+Shift+←` | Previous tab |
| `Ctrl+Shift+→` | Next tab |

## Editing rules

- Config is Lua; WezTerm uses `wezterm.config_builder()` API
- Theme is a separate module in `themes/` loaded via `require`
- Comments are in Spanish — preserve language if editing
