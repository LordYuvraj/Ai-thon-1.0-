#!/bin/bash

# Print message and run first script
echo "Running create_env.sh..."
bash create_env.sh

# Print message and run second script
echo "Running install_packages.sh..."
bash install_packages.sh

echo "All tasks completed."
read -p "Press Enter to continue..."
