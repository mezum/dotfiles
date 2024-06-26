#!/usr/bin/env bash
set -eu

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")"; pwd)"

. "$BASEDIR/env.sh"
mkdir -p \
    "$XDG_CONFIG_HOME" \
    "$XDG_DATA_HOME" \
    "$XDG_STATE_HOME" \
    "$XDG_CACHE_HOME"

ln -sf "$BASEDIR/profile.sh" "$HOME/.bash_profile"
ln -sf "$BASEDIR/rc.sh" "$HOME/.bashrc"
