#!/usr/bin/env bash

set -e

if [ "$1" == "" ]; then
  echo "You must provide a Github repo name in the format owner/repo"
  exit 1
fi

git clone "https://github.com/$1.wiki.git" "wiki"

if [[ $? -ne 0 ]]; then
  exit 1
fi

cd "wiki"

for file in *.md
do
  echo "\chapter{$file}" >> "wiki.tex"

  pandoc "$file" -f "markdown_github" -t "latex" >> "wiki.tex"
done

cd "../"

pandoc "wiki/wiki.tex" -s -o "wiki.pdf" --variable documentclass="report" --toc

rm -rf "wiki"

echo "PDF generated at wiki.pdf"

exit 0
