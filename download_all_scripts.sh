#!/usr/bin/env bash

# Check if .venv exists
if [ ! -d ".venv" ]; then
    echo "Creating virtual environment"
    python3 -m venv .venv
    source .venv/bin/activate
    echo "Installing requirements"
    pip install -r requirements.txt
else
    source .venv/bin/activate
fi

python download_all_scripts.py

