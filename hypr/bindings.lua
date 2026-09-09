-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- Vim-style window focus and swapping (physical Super is mapped to ALT).
-- Replaces SUPER+J split toggle, SUPER+K keybinding help, and SUPER+L layout toggle.
hl.unbind("SUPER + LEFT")
hl.unbind("SUPER + H")
hl.unbind("SUPER + SHIFT + LEFT")
hl.unbind("SUPER + SHIFT + H")
o.bind("ALT + H", "Focus window left", hl.dsp.focus({ direction = "l" }))
o.bind("ALT + SHIFT + H", "Swap window left", hl.dsp.window.swap({ direction = "l" }))
hl.unbind("SUPER + DOWN")
hl.unbind("SUPER + J")
hl.unbind("SUPER + SHIFT + DOWN")
hl.unbind("SUPER + SHIFT + J")
o.bind("ALT + J", "Focus window down", hl.dsp.focus({ direction = "d" }))
o.bind("ALT + SHIFT + J", "Swap window down", hl.dsp.window.swap({ direction = "d" }))
hl.unbind("SUPER + UP")
hl.unbind("SUPER + K")
hl.unbind("SUPER + SHIFT + UP")
hl.unbind("SUPER + SHIFT + K")
o.bind("ALT + K", "Focus window up", hl.dsp.focus({ direction = "u" }))
o.bind("ALT + SHIFT + K", "Swap window up", hl.dsp.window.swap({ direction = "u" }))
hl.unbind("SUPER + RIGHT")
hl.unbind("SUPER + L")
hl.unbind("SUPER + SHIFT + RIGHT")
hl.unbind("SUPER + SHIFT + L")
o.bind("ALT + L", "Focus window right", hl.dsp.focus({ direction = "r" }))
o.bind("ALT + SHIFT + L", "Swap window right", hl.dsp.window.swap({ direction = "r" }))

-- Keybinding help on physical Alt+K (Alt is mapped to SUPER).
o.bind("SUPER + K", "Keybindings", "omarchy-menu-keybindings")
