#!/bin/bash


# Make the script executable
sudo chmod +x install_packages.sh

# Check if pip is installed
if ! command -v pip &> /dev/null
then
    echo "pip could not be found"
    exit
fi

# Check if pip needs to be upgraded
pip_version=$(pip --version | awk '{print $2}')
latest_pip_version=$(curl https://pypi.org/pypi/pip/json | python -c "import sys, json; print(json.load(sys.stdin)['info']['version'])")

if [ "$pip_version" != "$latest_pip_version" ]; then
    echo "Upgrading pip from version $pip_version to $latest_pip_version"
    pip install --upgrade pip
fi

# move this to another script
# Install packages from requirements.txt
pip install -r requirements.txt