#!bin/bash

cd '/home/creawww/DATOS/020_NOVATERRA/Novaterra/MemoriaAnual/2016'

echo "union de pdfS"
pdftk *.pdf output libro.pdf

echo "copia del archivo a tamaño mas reducido"
gs -dSAFER -dBATCH -dNOPAUSE -q -dTextAlphaBits=4 -dGraphicsAlphaBits=4 -sDEVICE=pdfwrite -dPDFSETTINGS=/ebook -sOutputFile="memoria2016.pdf" "libro.pdf"
