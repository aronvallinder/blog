#!/bin/bash
# Builds Hugo site from Obsidian content and optionally deploys

OBSIDIAN_MUSINGS="/Users/aron/Obsidian/Notes/Musings"
HUGO_DIR="/Users/aron/blog"
CONTENT_DIR="$HUGO_DIR/content/musings"

# Clean and recreate content directory
rm -rf "$CONTENT_DIR"
mkdir -p "$CONTENT_DIR"

# Process each markdown file
for file in "$OBSIDIAN_MUSINGS"/*.md; do
    if [[ -f "$file" ]]; then
        filename=$(basename "$file")
        title="${filename%.md}"

        # Get modification date
        mod_date=$(stat -f "%Sm" -t "%Y-%m-%dT%H:%M:%S" "$file")

        # Create Hugo-compatible file with frontmatter
        {
            echo "---"
            echo "title: \"$title\""
            echo "date: $mod_date"
            echo "---"
            echo ""
            # Convert wiki-links [[text]] or [[link|text]] to plain text or markdown links
            sed -E 's/\[\[([^]|]+)\|([^]]+)\]\]/\2/g; s/\[\[([^]]+)\]\]/\1/g' "$file"
        } > "$CONTENT_DIR/$filename"

        echo "Processed: $title"
    fi
done

# Create musings index page
cat > "$CONTENT_DIR/_index.md" << 'EOF'
---
title: "Musings"
---
EOF

echo ""
echo "Build complete."

# Deploy if --deploy flag is passed
if [[ "$1" == "--deploy" ]]; then
    cd "$HUGO_DIR"
    git add -A
    if git diff --cached --quiet; then
        echo "No changes to deploy."
    else
        git commit -m "Update musings $(date +%Y-%m-%d)"
        git push
        echo "Deployed to GitHub."
    fi
fi
