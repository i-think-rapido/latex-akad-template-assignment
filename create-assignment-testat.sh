
type=assignment-testat
pdfcreation="lualatex --output-directory build template/master-$type.tex"

find template -type d | while read line ; do mkdir -p build/$line ; done
$pdfcreation
biber build/master-$type
$pdfcreation
$pdfcreation
