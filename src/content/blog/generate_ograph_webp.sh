#!/bin/bash

# Check for rsvg-convert
if ! command -v rsvg-convert &> /dev/null; then
  echo "Error: 'rsvg-convert' not found."
  echo "Please install librsvg (e.g., on Debian/Ubuntu: sudo apt-get install librsvg2-bin)"
  exit 1
fi

find . -mindepth 1 -type d | while read -r dir; do
  header_svg="$dir/header.svg"
  header_webp="$dir/header.webp"
  
  if [ -f "$header_webp" ]; then
    echo "header.webp already exists in $dir, skipping."
    continue
  fi

  if [ -f "$header_svg" ]; then
    # Rasterize SVG to PNG with 512px width
    rsvg-convert -w 512 -o "$dir/temp.png" "$header_svg"
    # Convert PNG to WebP with quality 90
    if command -v cwebp &> /dev/null; then
      cwebp -q 90 "$dir/temp.png" -o "$header_webp"
      echo "Created $header_webp in $dir"
    else
      echo "Error: 'cwebp' not found. Install libwebp tools to convert PNG to WebP."
      rm "$dir/temp.png"
      continue
    fi
    # Clean up temporary PNG
    rm "$dir/temp.png"
  else
    echo "No header.svg found in $dir, skipping."
  fi
done
