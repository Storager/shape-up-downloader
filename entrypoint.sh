#!/bin/bash -e
echo "========== Downloading single HTML =================="
[ -f shape-up.html.md5 ] || ( php /app/cli.php download:single-html && md5sum shape-up.html  > shape-up.html.md5 )
echo "============ Converting to e-book ===================="
ebook-convert shape-up.html /app/output/shape-up.${1} \
    --authors "Ryan Singer" \
    --title "Shape Up: Stop Running in Circles and Ship Work that Matters" \
    --book-producer "Basecamp" \
    --publisher "Basecamp" \
    --language "en"