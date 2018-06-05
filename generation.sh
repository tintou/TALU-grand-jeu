#! /bin/sh

HTML_PAGE="""<!doctype html>
<html>
<head>
    <meta charset=\"utf-8\">
    <title>TALU Grand Jeu</title>
</head>

<body>\n"""
mkdir result | true
mkdir docs | true

for f in *-*-*/*.tex
do
    if [ ! -f "$f"] || [ ! -s "$f" ]
    then
      echo "Empty file: $f"
      continue
    fi
    echo "Generating: $f"
    out_dir=result/$(dirname "$f")
    docs_dir=docs/$(dirname "$f")
    mkdir "$out_dir" | true
    mkdir "$docs_dir" | true
    lualatex --output-directory="$out_dir" "$f" --interaction=errorstopmode
    fpdf=$(echo "$f"|sed -e 's/.tex/.pdf/g')
    cp "result/$fpdf" "$docs_dir/"
    HTML_PAGE=$HTML_PAGE"<a href=\"$fpdf\">$fpdf</a><br>\n"
done

HTML_PAGE=$HTML_PAGE"""
</body>

</html>"""

# publish the website
echo "$HTML_PAGE" > "docs/index.html"
