#import "../src/main.typ": *
#import "@preview/roremu:0.1.0": roremu

#show: resume.with(
  pdf-author: "haxibami",
  pdf-keywords: (
    "Typst",
  ),
  title: [#text(size: 1.5em)[*Typst文書のサンプル*]],
  author: [
    #align(
      right,
      grid(
        columns: (
          25pt,
          40pt,
        ),
        gutter: 5pt,
        image(
          "./icon.jpg",
          width: 25pt,
        ),
        align(horizon)[haxibami],
      ),
    )
  ],
  date: [#datetime.today().display()],
  header: align(right)[
    Typst文書のサンプル
  ],
)

#set heading(numbering: "1.1.")
#outline(title: "目次")

= 見出し・リンク・引用・コードブロック

#quote(
  attribution: [#link("https://github.com/typst/typst")[GitHub]],
  block: true,
)[
  "Typst is a new markup-based typesetting system that is designed to be as powerful as LaTeX while being much easier to learn and use."
]

```typ
= 見出し・リンク・引用・コードブロック

#quote(
  attribution: [#link("https://github.com/typst/typst")[GitHub]],
  block: true,
)[
  "Typst is a new markup-based typesetting system that is designed to be as powerful as LaTeX while being much easier to learn and use."
]
```

= 言語とフォント

こんにちは / Добридень / ٱلسَّلَامُ عَلَيْكُمْ / #emoji.face.heart

= リスト・装飾・数式・絵文字

このごろ都に流行るもの

- ツイート
- 捕食者
- ツイーター

ツイート捕食者 #text(size: 1.5em, fill: red)[ツイーター] は、ツイートを

+ #underline(offset: 3pt)[捕食]して
+ 消費する

しかし、みなさんのツイート生産速度のほうが*はるかに*速いため、けっして追いつくことはない。

```typ
このごろ都に流行るもの

- ツイート
- 捕食者
- ツイーター

ツイート捕食者 #text(size: 1.5em, fill: red)[ツイーター] は、ツイートを

+ #underline(offset: 3pt)[捕食]して
+ 消費する

しかし、みなさんのツイート生産速度のほうが*はるかに*速いため、けっして追いつくことはない。
```

$P(x)$:「$x$ がツイートを捕食する」、$Q(x)$:「$x$ がツイーターである」とすると、

#align(center)[
  $forall x(
    P(
      x
    ) arrow.r Q(
      x
    )
  )$
]

```typ
#align(center)[
  $forall x(P(x) arrow.r Q(x))$
]
```

= 画像・グリッド

@icon は私のアイコン、@icon_old は私の以前のアイコンである。

#grid(
  columns: (
    1fr,
    1fr,
  ),
  gutter: 10pt,
  align(horizon)[
    #figure(
      image(
        "icon.jpg",
        width: 40%,
      ),
      caption: [
        A girl holding _Naming and Necessity_.
      ],
    ) <icon>
  ],
  align(horizon)[
    #figure(
      image(
        "icon_old.png",
        width: 40%,
      ),
      caption: [
        Ange, from _Princess Principal_.
      ],
    ) <icon_old>
  ],
)

```typ
@icon は私のアイコン、@icon_old は私の以前のアイコンである。

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  align(horizon)[
    #figure(
    image("icon.jpg", width: 40%),
    caption: [
        A girl holding _Naming and Necessity_.
      ],
    ) <icon>
  ],
  align(horizon)[
    #figure(
    image("icon_old.png", width: 40%),
    caption: [
        Ange, from _Princess Principal_.
      ],
    ) <icon_old>
  ]
)
```

= にせ #macro.latex（文字の位置調整）

キヒヒ…… #macro.latex でヤンスねえ……

```typ
// macro.typ
#let latex = text(font: "Latin Modern Roman", [L#h(-0.35em)#text(size: 0.725em, baseline: -0.25em)[A]#h(-0.125em)T#h(-0.175em)#text(baseline: 0.225em)[E]#h(-0.125em)X])
```

```typ
キヒヒ…… #macro.latex でヤンスねえ……
```


= 段落のインデント

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
