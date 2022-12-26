#!/bin/bash
# This script is for DEV purposes
# Run it from project's root folder

docker build -t app . && docker run -it app sh