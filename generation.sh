#! /bin/sh

HTML_PAGE="""<!doctype html>
<html>
<head>
    <title>TALU Grand Jeu</title>
</head>

<body>"""
mkdir result | true
for f in *.tex
do
    echo "Generating: $f"
    lualatex --output-directory=result $f
    fpdf=$(echo "$f"|sed -e 's/.tex/.pdf/g')
    HTML_PAGE=$HTML_PAGE"<a href=\"$fpdf\">$fpdf</a><br>"
done

HTML_PAGE=$HTML_PAGE"""
</body>

</html>"""

# publish the website
mkdir docs | true
echo "$HTML_PAGE" > "docs/index.html"
cp result/*.pdf docs/
