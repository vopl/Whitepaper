sed -e 's/\. /. Abra Cadabra Shwabra /g' WhitePaper_EN-1.tex > _en4d.tex
sed -e 's/\. /. Abra Cadabra Shwabra /g' WhitePaper_RU-1.tex > _ru4d.tex

latexdiff _en4d.tex _ru4d.tex > _d.tex

sed -ri 's/\. Abra Cadabra Shwabra /. /g' _d.tex

pdflatex _d.tex
