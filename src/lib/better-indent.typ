#let better-indent(
  indent: true,
  length: 1em,
  spacing: 1.2em,
  font-size: 11pt,
  body
) = {

  let block-extra-height = calc.max(1.2em - spacing, 0em)

  set par(
    first-line-indent: length,
  ) if indent

  show heading: it => {
    it
    text(size: font-size)[#v(0em, weak: true)]
    text(size: font-size)[#h(0em)]
  }

  show raw.where(block: true): it => {
    it
    text(size: font-size)[#v(0em, weak: true)]
    text(size: font-size)[#h(0em)]
  }

  show terms: it => {
    it
    text(size: font-size)[#v(0em, weak: true)]
    text(size: font-size)[#h(0em)]
  }

  show math.equation.where(block: true): it => {
    it
    text(size: font-size)[#v(0em, weak: true)]
    text(size: font-size)[#h(0em)]
  }

  show list: it => {
    it
    text(size: font-size)[#v(block-extra-height, weak: true)]
    text(size: font-size)[#h(0em)]
  }

  show figure: it => {
    it
    text(size: font-size)[#v(block-extra-height, weak: true)]
    text(size: font-size)[#h(0em)]
  }

  show table: it => {
    it
    text(size: font-size)[#v(block-extra-height, weak: true)]
    text(size: font-size)[#h(0em)]
  }

  show quote.where(block: true): it => {
    text(size: font-size)[#v(spacing, weak: true)]
    it
    text(size: font-size)[#v(0em, weak: true)]
    text(size: font-size)[#h(0em)]
  }

  show outline: it => {
    set par(
      first-line-indent: 0em,
    )
    it
  }

  body
}
