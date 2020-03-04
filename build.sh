find template -type d | while read line ; do mkdir -p build/$line ; done
lualatex --output-directory build template/master.tex
