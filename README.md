# WikiToPdf
A bash script to export a Github repo's wiki as a well-structured PDF ebook.

## Requirements
- [Git](https://git-scm.com/)
- [Pandoc](http://pandoc.org/)
- [LaTex](https://www.latex-project.org/)

## Installation
Download the [script](https://raw.githubusercontent.com/ousmanedev/wikitopdf/master/wikitopdf.sh) file and make it executable:
```
curl https://raw.githubusercontent.com/ousmanedev/wikitopdf/master/wikitopdf.sh -o wikitopdf.sh && chmod +x wikitopdf.sh
```


## Usage
Run the script file with the repository url as argument.

For example, to export the [https://github.com/arsduo/koala/wiki](https://github.com/arsduo/koala/wiki) repository's wiki, you just have to do:
```
./wikitopdf.sh https://github.com/arsduo/koala/wiki
```

## Contributions
Contributions are more than welcome.
