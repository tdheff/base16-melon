#!/usr/bin/env bash
# Base16 Melon - Pantheon Terminal color scheme install script
# Tommy Heffernan (http://github.com/tdheff)
# Charles B Johnson (https://github.com/charlesbjohnson)

SCHEMA="org.pantheon.terminal.settings"

gsettings set "$SCHEMA" background "#ffeacf"
gsettings set "$SCHEMA" foreground "#635c5c"
gsettings set "$SCHEMA" palette "#ffeacf:#c7503e:#317891:#69b0c7:#abb242:#c2214f:#3ec780:#c0b1a1:#827873:#c7503e:#317891:#69b0c7:#abb242:#c2214f:#3ec780:#25242e"
gsettings set "$SCHEMA" cursor-color "#25242e"

unset SCHEMA
