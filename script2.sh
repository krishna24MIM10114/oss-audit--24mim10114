#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

echo "Checking package: $PACKAGE"
echo "--------------------------------"

# Check if installed (for Debian/Ubuntu)
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."

    # Show details
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""
echo "Philosophy Note:"
# Case statement
case $PACKAGE in
    git) echo "Git: A distributed system that empowers developers with freedom and control." ;;
    apache2) echo "Apache: The web server that built the open internet." ;;
    mysql-server) echo "MySQL: Open source at the heart of millions of applications." ;;
    firefox) echo "Firefox: A browser protecting open web principles." ;;
    *) echo "Unknown package." ;;
esac
