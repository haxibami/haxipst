#import "../lib/set-metadata.typ": *
#import "../lib/better-heading.typ": *

#let resume(
  pdf-title: none,
  pdf-author: (),
  pdf-keywords: (),
  pdf-date: auto,
  title: none,
  author: [],
  date: [],
  size: "a4",
  pagenum: true,
  header: [],
  indent: true,
  lang: "ja",
  region: "JP",
  font-serif: (
    "Linux Libertine",
    "Latin Modern Math",
    "Latin Modern Roman",
    "Noto Serif CJK JP",
    "serif",
  ),
  font-sans: (
    "Liberation Sans",
    "Noto Sans CJK JP",
  ),
  font-emoji: (
    "Noto Color Emoji",
  ),
  font-mono: (
    "Liberation Mono",
    "Noto Sans Mono CJK JP",
    "monospace",
  ),
  font-size: 10pt,
  spacing: 1.5em,
  tight: false,
  heading-inset: none,
  body,
) = {
  // set PDF metadata
  show: set-metadata.with(
    pdf-title: if (
      pdf-title == none
    ) {
      title
    } else {
      pdf-title
    },
    pdf-author: pdf-author,
    pdf-keywords: pdf-keywords,
    pdf-date: pdf-date,
  )

  // language, font family & size
  set text(
    lang: lang,
    region: region,
    size: font-size,
    font: (
      ..font-serif,
      ..font-sans,
      ..font-emoji,
    ),
  )

  set enum(indent: 1em)
  set table(inset: 0.8em)
  set list(
    marker: (
      [•],
      [▹],
      [»],
      [--],
    ),
    indent: 1em,
  )

  // page size
  set page(paper: size)

  // header
  set page(header: [
    #set text(8pt)
    #header
  ]) if header != []

  set page(numbering: "1") if pagenum

  // heading
  show: better-heading.with(
    font: font-sans,
    tight: tight,
    inset-y: heading-inset,
  )

  // title, date, author
  align(
    center,
    text[
      #set text(font: font-sans)
      #title
      #v(0.5em)
    ],
  )
  align(
    right,
    text[
      #date
    ],
  )
  align(
    right,
    text[
      #author
    ],
  )

  // inline code style
  show raw.where(block: false): it => {
    set text(font: font-mono)
    box(
      fill: luma(240),
      inset: (
        x: 3pt,
        y: 0pt,
      ),
      outset: (
        y: 3pt,
      ),
      radius: 2pt,
    )[#it]
  }

  // code block style
  show raw.where(block: true): it => {
    set text(font: font-mono)
    block(
      fill: luma(240),
      inset: 10pt,
      radius: 4pt,
    )[#it]
  }

  // code block style
  //   show raw.where(block: true): block.with(
  //       fill: luma(240),
  //       inset: 10pt,
  //       radius: 4pt,
  //   )

  // link style
  show link: it => {
    underline(
      offset: 3pt,
      text(
        blue,
        it,
      ),
    )
  }

  // paragraph style
  set par(leading: 1em, spacing: spacing)
  set par(first-line-indent: (amount: 1em, all: true)) if indent

  body
}
