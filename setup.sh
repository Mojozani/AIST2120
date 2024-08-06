#!/bin/bash

# Install Python 3.10 (for macOS/Linux)
# Note: Windows users should manually install Python 3.10 from the official website.
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo apt update
    sudo apt install -y python3.10 python3.10-venv python3.10-dev
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew update
    brew install python@3.10
fi

# Create and activate the virtual environment
python3.10 -m venv intro_python_env
source intro_python_env/bin/activate

# Install the required libraries
pip install -r requirements.txt
