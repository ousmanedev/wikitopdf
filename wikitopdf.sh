#!/usr/bin/env bash

set -e

if [ "$1" == "" ]; then
  echo "You must provide a Github repo name in the format owner/repo"
  exit 1
fi

WIKI_FOLDER="wiki"

git clone "https://github.com/$1.wiki.git" $WIKI_FOLDER

TEX_FILE="wiki.tex"

for file in "$WIKI_FOLDER"/*.md
do
  echo "\chapter{${file:${#WIKI_FOLDER}+1:${#file}-${#WIKI_FOLDER}-4}}" >> $TEX_FILE

  pandoc "$file" -f "markdown_github" -t "latex" >> $TEX_FILE
done

PDF_FILE="wiki.pdf"

rm -rf $WIKI_FOLDER

pandoc $TEX_FILE -s -o $PDF_FILE --variable documentclass="report" --toc

rm $TEX_FILE

echo "PDF file generated at $PDF_FILE"

exit 0
