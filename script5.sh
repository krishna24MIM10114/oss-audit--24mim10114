#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

# Take input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Create manifesto
echo "----------------------------------------" > $OUTPUT
echo "        OPEN SOURCE MANIFESTO" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "I believe in the power of open source." >> $OUTPUT
echo "Using tools like $TOOL, I experience $FREEDOM in technology." >> $OUTPUT
echo "In the future, I would like to build $BUILD and share it freely with the world." >> $OUTPUT
echo "Open source is not just code, it is a philosophy of collaboration and innovation." >> $OUTPUT

# Show output
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
