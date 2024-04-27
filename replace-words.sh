#!/bin/bash
input_file="input.txt"
sed -i '/welcome/ {n;n;n;n; s/give/learning/g}' "$input_file"

echo "Replacement completed."
