#!/bin/bash
# This script is default command for Dockerfile's last instruction: CMD
# Run it from project's root folder

PYTHONPATH="$PYTHONPATH:src"

python src/main.py