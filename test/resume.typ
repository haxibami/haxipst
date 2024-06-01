#import "../src/main.typ": *
#import "@preview/roremu:0.1.0": roremu

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

#set heading(numbering: "1.a.")

= 見出し1

== 見出し2

=== 見出し3

= ショーケース

== 段落のインデント

デフォルトで段落はインデントされる。

#roremu(128)…

#macro.no-indent[
  もちろん、インデントさせないこともできる。
]

```Typst
#macro.no-indent[
  もちろん、インデントさせないこともできる。
]
```

しかし、たいていの場合、インデントしたほうがよいだろう #emoji.face.stars

=== 実装

#link("https://github.com/typst/typst/issues/311")[\#311] がまだ解決されていないので、力技

#let code = read("../src/lib/better-indent.typ")
#raw(
  code,
  lang: "Typst",
  block: true,
)

== 引用

#quote(
  attribution: [Кино],
  block: true,
)[
  ... Они говорят им нельзя рисковать, потому что у них есть дом.
]
