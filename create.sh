
# remove build folder if existent
[ -x build ] && rm -rf build 2>/dev/null

# copy documents to build folder
mkdir -p build
cp -r template/* build
[ -x content ] && cp -r content build && \
[ -x config-default.tex ] && cp config-default.tex build/config.tex
[ -x config.tex ] && cp config.tex build

# latex pdf generation
document=master-$type
pdfcreation="lualatex $document"
[ -x build ] && \
cd build && \
$pdfcreation && \
biber $document && \
$pdfcreation && \
$pdfcreation