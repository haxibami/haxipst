# haxipst

My typst templates & utilities (WIP). Includes:

- `resume` - resume / document template
- `set-metadata` - utility to set metadata for PDF files
- `better-indent` - utility to indent first paragraph (See: [typst/typst #311](https://github.com/typst/typst/issues/311))
- `better-heading` - utilty to get loose heading
- `macro/*` - various macros (`#noindent`, `#latex`...)

## Install

This package is not published to official repo, since it is my personal one.

But you can use it as local package (See [Official Guide](https://github.com/typst/packages#local-packages) for more information).

```sh
cd {data-dir} # Depends on your environment
mkdir -p ./typst/packages/local/haxipst && cd ./typst/packages/local/haxipst
git clone https://github.com/haxibami/haxipst.git 0.1.0
```

## Usage

See `test/sample.typ` for example usage.

```typ
#import "@local/haxipst:0.1.0": *

#show: resume.with(
  pdf-author: "著者",
  pdf-keywords: (
    "キーワード1",
    "キーワード2",
  ),
  title: [#text(size: 1.5em)[*タイトル*]],
  author: [著者],
  header: [ヘッダー #h(1fr) #datetime.today().display()],
)
```
