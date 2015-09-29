#!/usr/bin/env bash
# Base16 Melon - Pantheon Terminal color scheme install script
# Tommy Heffernan (http://github.com/tdheff)
# Charles B Johnson (https://github.com/charlesbjohnson)

SCHEMA="org.pantheon.terminal.settings"

gsettings set "$SCHEMA" background "#25242e"
gsettings set "$SCHEMA" foreground "#c0b1a1"
gsettings set "$SCHEMA" palette "#25242e:#c7503e:#317891:#69b0c7:#abb242:#c2214f:#3ec780:#c0b1a1:#827873:#c7503e:#317891:#69b0c7:#abb242:#c2214f:#3ec780:#ffeacf"
gsettings set "$SCHEMA" cursor-color "#444045"

unset SCHEMA
