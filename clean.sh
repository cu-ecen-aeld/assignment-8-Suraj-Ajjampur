#!/bin/sh

# Script to perform clean
# Author - Suraj Ajjampur

# Function to perform clean operation
clean_buildroot() {
    if [ -d "buildroot" ]; then
        cd buildroot || { echo "Could not change directory to buildroot"; exit 1; }
        make distclean || { echo "Clean Unsuccessful"; exit 1; }
        echo "Clean successful"
    else
        echo "Buildroot directory doesn't exist"
    fi
}

# Call the function
clean_buildroot
