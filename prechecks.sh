#!/bin/bash
if command -v python &>/dev/null; then
    echo Python  is installed
    pyv="$(python -V 2>&1)"
    echo "Python version:
********************************************
     $pyv"
else
    echo Python  is not installed
fi
