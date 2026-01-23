#!/bin/bash
# Watches Obsidian Website folder and auto-deploys changes to GitHub

OBSIDIAN_WEBSITE="/Users/aron/Obsidian/Notes/Website"
SCRIPT_DIR="$(dirname "$0")"

echo "Watching $OBSIDIAN_WEBSITE for changes..."
echo "Blog posts: $OBSIDIAN_WEBSITE/*.md"
echo "Pages: $OBSIDIAN_WEBSITE/Pages/*.md"
echo "Changes will be automatically built and deployed to GitHub."
echo "Press Ctrl+C to stop."

/opt/homebrew/bin/fswatch -o "$OBSIDIAN_WEBSITE" | while read; do
    sleep 1
    echo ""
    echo "=== Change detected at $(date) ==="
    "$SCRIPT_DIR/build.sh" --deploy
done
