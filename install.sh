#!/usr/bin/env bash
# findash installer for macOS / Linux: creates a private Python environment, installs findash, then walks you through activation + setup.
set -e
cd "$(dirname "$0")"
PY=$(command -v python3 || command -v python || true)
[ -z "$PY" ] && { echo "Python 3.9 or newer is required: https://www.python.org/downloads/"; exit 1; }
"$PY" -c 'import sys; sys.exit(0 if sys.version_info >= (3, 9) else 1)' || { echo "Python 3.9 or newer is required."; exit 1; }
echo "Installing findash (one-time) ..."
"$PY" -m venv .venv
. .venv/bin/activate
python -m pip install --quiet --upgrade pip
python -m pip install --quiet .
echo
echo "Step 1/2 - licence key (findash only runs with a key from its owner)."
findash activate || { echo "You can activate later with:  .venv/bin/findash activate"; }
echo
echo "Step 2/2 - setup (folder, profile, AI provider)."
findash setup || true
echo
echo "Done. Run it any time with:  ./run_findash.sh"
