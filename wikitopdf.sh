#!/usr/bin/env bash

set -e

if [ "$1" == "" ]; then
  echo "You must provide the full Github repository url (https://github.com/owner/repo)"
  exit 1
fi

WIKI_FOLDER="wiki"

git clone "$1.wiki.git" $WIKI_FOLDER

TEX_FILE="wiki.tex"

for file in "$WIKI_FOLDER"/*.md
do
  echo "\chapter{${file:${#WIKI_FOLDER}+1:${#file}-${#WIKI_FOLDER}-4}}" >> $TEX_FILE

  pandoc "$file" -f "markdown_github" -t "latex" >> $TEX_FILE
done

rm -rf $WIKI_FOLDER

PDF_FILE="wiki.pdf"

pandoc $TEX_FILE -s -o $PDF_FILE --variable documentclass="report" --toc

rm $TEX_FILE

echo "PDF file generated at $PDF_FILE"

exit 0
