#!/bin/bash
# Builds Hugo site from Obsidian content and optionally deploys

OBSIDIAN_WEBSITE="/Users/aron/Obsidian/Notes/Website"
HUGO_DIR="/Users/aron/blog"
POSTS_DIR="$HUGO_DIR/content/blog"
PAGES_DIR="$HUGO_DIR/content"

# Clean and recreate posts directory
rm -rf "$POSTS_DIR"
mkdir -p "$POSTS_DIR"

# Process blog posts (all .md files in Website/, excluding Pages/ subfolder)
for file in "$OBSIDIAN_WEBSITE"/*.md; do
    if [[ -f "$file" ]]; then
        filename=$(basename "$file")
        title="${filename%.md}"

        # Skip utility files
        if [[ "$filename" == "Musings.md" ]]; then
            continue
        fi

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
        } > "$POSTS_DIR/$filename"

        echo "Processed post: $title"
    fi
done

# Create blog index page
cat > "$POSTS_DIR/_index.md" << 'EOF'
---
title: "Blog"
---
EOF

# Process static pages from Pages/ subfolder
for file in "$OBSIDIAN_WEBSITE/Pages"/*.md; do
    if [[ -f "$file" ]]; then
        filename=$(basename "$file")
        title="${filename%.md}"

        # Map filenames to URL slugs
        case "$filename" in
            "about.md")
                output_file="$PAGES_DIR/_index.md"
                page_title="Aron Vallinder"
                ;;
            "Current projects.md")
                output_file="$PAGES_DIR/projects.md"
                page_title="Current Projects"
                ;;
            "Questions on my mind.md")
                output_file="$PAGES_DIR/questions.md"
                page_title="Questions on My Mind"
                ;;
            "Papers I've written.md")
                output_file="$PAGES_DIR/papers.md"
                page_title="Papers"
                ;;
            *)
                # Default: use filename as slug
                slug=$(echo "$title" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
                output_file="$PAGES_DIR/$slug.md"
                page_title="$title"
                ;;
        esac

        # Create Hugo-compatible file with frontmatter
        {
            echo "---"
            echo "title: \"$page_title\""
            echo "---"
            echo ""
            # Convert wiki-links to proper URLs
            cat "$file" | \
                sed 's/\[\[Current projects\]\]/[Projects](\/projects\/)/g' | \
                sed 's/\[\[Questions on my mind\]\]/[Questions on my mind](\/questions\/)/g' | \
                sed 's/\[\[Musings\]\]/[Blog](\/blog\/)/g' | \
                sed "s/\[\[Papers I've written\]\]/[Papers](\/papers\/)/g" | \
                sed -E 's/\[\[([^]|]+)\|([^]]+)\]\]/\2/g; s/\[\[([^]]+)\]\]/\1/g'
        } > "$output_file"

        echo "Processed page: $page_title"
    fi
done

echo ""
echo "Build complete."

# Deploy if --deploy flag is passed
if [[ "$1" == "--deploy" ]]; then
    cd "$HUGO_DIR"
    git add -A
    if git diff --cached --quiet; then
        echo "No changes to deploy."
    else
        git commit -m "Update content $(date +%Y-%m-%d)"
        git push
        echo "Deployed to GitHub."
    fi
fi
