#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "--------------------------------"

# Loop through directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo ""
echo "Checking Git config directory..."

# Check Git config directory
if [ -f "$HOME/.gitconfig" ]; then
    PERMS=$(ls -l $HOME/.gitconfig | awk '{print $1, $3, $4}')
    echo "~/.gitconfig exists => $PERMS"
else
    echo "Git config file not found"
fi
