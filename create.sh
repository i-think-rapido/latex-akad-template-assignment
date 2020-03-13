
# remove build folder if existent
[ -e build ] && rm -rf build 2>/dev/null

# copy documents to build folder
mkdir -p build
cp -r template/* build
[ -e content ] && cp -r content build
[ -e config-default.tex ] && cp config-default.tex build/config.tex
[ -e config.tex ] && cp config.tex build

# latex pdf generation
document=master-$type
pdfcreation="lualatex $document"
[ -e build ] && \
cd build && \
$pdfcreation && \
biber $document && \
$pdfcreation && \
$pdfcreation