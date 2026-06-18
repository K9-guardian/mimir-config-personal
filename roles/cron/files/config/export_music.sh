#!/bin/sh
export BEETSDIR="$HOME/.config/beets"
BEET="$HOME/.local/bin/beet"
MUSICLIST="/mnt/nas/share/k9/Music/musiclist.csv"

"$BEET" export -all -format=csv -output="$MUSICLIST" --include-keys="albumartist,album,year,genre"
