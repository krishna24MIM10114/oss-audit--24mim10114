#!/bin/bash
# Script 1: System Identity Report
# Author: Devendra Singh
# Course: Open Source Software Lab
# Description: Displays system identity and environment details

STUDENT_NAME="Devendra"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE_TIME=$(date)
DISTRO=$(grep '^PRETTY_NAME' /etc/os-release | cut -d= -f2 | tr -d '"')

echo "======================================="
echo "  System Identity Report — $STUDENT_NAME"
echo "======================================="
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "User            : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE_TIME"
echo "Shell Used      : $SHELL"
echo "Hostname        : $(hostname)"
echo ""
echo "License Info: Linux is generally licensed under the GPL (General Public License)."
