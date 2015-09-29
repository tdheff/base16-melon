#!/usr/bin/env bash
# Base16 Melon - Mate Terminal color scheme install script
# Tommy Heffernan (http://github.com/tdheff)

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 Melon Light"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-melon-light"
[[ -z "$DCONFTOOL" ]] && DCONFTOOL=dconf
[[ -z "$BASE_KEY" ]] && BASE_KEY=/org/mate/terminal/profiles

PROFILE_KEY="$BASE_KEY/$PROFILE_SLUG"

dset() {
  local key="$1"; shift
  local val="$1"; shift

  "$DCONFTOOL" write "$PROFILE_KEY/$key" "$val"
}

# Because gconftool doesn't have "append"
glist_append() {
  local key="$1"; shift
  local val="$1"; shift

  local entries="$(
    {
      "$DCONFTOOL" read "$key" | tr -d '[]' | tr , "\n" | fgrep -v "$val"
      echo "'$val'"
    } | head -c-1 | tr "\n" ,
  )"

  "$DCONFTOOL" write "$key" "[$entries]"
}

# Append the Base16 profile to the profile list
glist_append /org/mate/terminal/global/profile-list "$PROFILE_SLUG"

dset visible-name "'$PROFILE_NAME'"
dset palette "'#ffeacf:#c7503e:#317891:#69b0c7:#abb242:#c2214f:#3ec780:#c0b1a1:#827873:#c7503e:#317891:#69b0c7:#abb242:#c2214f:#3ec780:#25242e'"
dset background-color "'#ffeacf'"
dset foreground-color "'#635c5c'"
dset bold-color "'#635c5c'"
dset bold-color-same-as-fg "true"
dset use-theme-colors "false"
dset use-theme-background "false"
