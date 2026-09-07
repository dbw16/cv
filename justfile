pdf:
    typst compile cv.typ cv.pdf

ci:
    typst compile --format pdf --diagnostic-format short cv.typ /dev/null

# Build the static site published to GitHub Pages into ./site
site:
    #!/usr/bin/env bash
    set -euo pipefail
    rm -rf site
    mkdir -p site
    typst compile cv.typ site/cv.pdf
    typst compile --format svg cv.typ 'site/cv-{0p}.svg'
    frag="$(mktemp)"
    n=0
    for f in site/cv-*.svg; do
        n=$((n + 1))
        printf '    <img class="sheet" src="%s" alt="CV page %d" loading="lazy" decoding="async">\n' \
            "$(basename "$f")" "$n" >>"$frag"
    done
    sed -e "/<!--PAGES-->/r $frag" -e "/<!--PAGES-->/d" web/index.html >site/index.html
    rm -f "$frag"
    echo "built site/ ($n page(s))"

# Preview the built site at http://localhost:8000
serve: site
    python3 -m http.server 8000 --directory site
