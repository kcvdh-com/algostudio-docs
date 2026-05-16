# AlgoStudio Docs

Teacher documentation for [AlgoStudio](https://github.com/kcvdh-com/algostudio), built with [MkDocs Material](https://squidfunk.github.io/mkdocs-material/).

## Run locally

```sh
pip install -r requirements.txt
mkdocs serve
```

## Build

```sh
mkdocs build
```

## Deploy (Docker)

```sh
docker build -t algostudio-docs .
docker run -p 8080:80 algostudio-docs
```
