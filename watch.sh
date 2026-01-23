#!/bin/bash
# Watches Obsidian Musings folder and auto-deploys changes to GitHub

OBSIDIAN_MUSINGS="/Users/aron/Obsidian/Notes/Musings"
SCRIPT_DIR="$(dirname "$0")"

echo "Watching $OBSIDIAN_MUSINGS for changes..."
echo "Changes will be automatically built and deployed to GitHub."
echo "Press Ctrl+C to stop."

/opt/homebrew/bin/fswatch -o "$OBSIDIAN_MUSINGS" | while read; do
    sleep 1
    echo ""
    echo "=== Change detected at $(date) ==="
    "$SCRIPT_DIR/build.sh" --deploy
done
