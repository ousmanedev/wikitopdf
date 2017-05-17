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
It's very simple.
For example, to export the [plataformatec/devise](https://github.com/plataformatec/devise) repository's wiki, you just have to do:
```
./wikitopdf.sh plataformatec/devise
```

## Contributions
Contributions are more than welcome.
