#!/bin/bash

echo "Activating the Conda environment 'EDU'..."

# Ensure Conda is initialized for shell usage
if ! command -v conda &> /dev/null; then
    echo "Conda is not found. Please install Miniconda or Anaconda first."
    exit 1
fi

# Initialize conda in current shell session if needed
eval "$(conda shell.bash hook)"

# Try to activate the EDU environment
conda activate EDU

# Check if activation succeeded
if [ "$CONDA_DEFAULT_ENV" != "EDU" ]; then
    echo "Failed to activate the EDU environment. Please check your conda installation."
    exit 1
fi

echo "Installing PyTorch, Torchvision, CUDA 11.8, and Ultralytics..."

# Install required packages using conda and pip
conda install -c pytorch -c nvidia -c conda-forge \
    pytorch torchvision pytorch-cuda=11.8 ultralytics -y

pip install opencv-contrib-python

echo "Environment setup complete. You can now run your code in the 'EDU' environment."

# Optional: Pause (like in Windows)
read -p "Press Enter to exit..."
