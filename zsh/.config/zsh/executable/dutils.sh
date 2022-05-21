#!/bin/bash
#
# Library with common utilities for interraction with dmenu.


#######################################
# Extract urls from stream.
# Arguments:
#   Stream which should contain URLs.
# Outputs:
#   Array of URL's. 
#######################################
du::grep_urls() {
  local URLREGEX="(((http|https|gopher|gemini|ftp|ftps|git)://|www\\.)"
  URLREGEX+="[a-zA-Z0-9.]*[:]?[a-zA-Z0-9./@$\+&%?$\#=_~-]*)|"
  URLREGEX+="((magnet:\\?xt=urn:btih:)[a-zA-Z0-9]*)"
  echo "$1" | grep -aEo "${URLREGEX}"
}

du::einput() {
  /dev/null 2>/dev/null | dmenu "$@"
}

du::notify() {
  dunstify -a "$APP" "$@"
}

du::cnotify() {
  dunstify -a "$APP" -u critical "$@"
}

du::lnotify() {
  dunstify -a "$APP" -u low "$@"
}
