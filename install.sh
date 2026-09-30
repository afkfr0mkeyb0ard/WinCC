#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INSTALL_DIR="$HOME/.local/bin"

mkdir -p "$INSTALL_DIR"

cp "$SCRIPT_DIR/wincc" "$INSTALL_DIR/wincc"
chmod +x "$INSTALL_DIR/wincc"

echo "wincc installed to $INSTALL_DIR/wincc"

if ! command -v docker >/dev/null 2>&1; then
    echo
    echo "Warning: Docker is not installed or is not in PATH."
fi

case ":$PATH:" in
    *":$INSTALL_DIR:"*)
        ;;
    *)
        echo
        echo "Add this to your shell configuration:"
        echo
        echo 'export PATH="$HOME/.local/bin:$PATH"'
        ;;
esac
