
pdfcreation="lualatex --output-directory build template/master-assignment-testat.tex"

find template -type d | while read line ; do mkdir -p build/$line ; done
$pdfcreation
biber build/master-assignment-testat
$pdfcreation
