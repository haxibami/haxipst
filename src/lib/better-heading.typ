// Typst's default heading is a bit tight, so we'll make it a bit more

#let better-heading(
  font: (
    "sans-serif",
  ),
  tight: false,
  inset-y: none,
  prefix: none,
  body
) = {

  if tight {
    inset-y = 0.5em
  } else if inset-y == none {
    inset-y = 0.75em
  }

  show heading: it => {
    block(inset: (y: inset-y))[
      #text(font: font, weight: "bold", size: 1em)[
        #prefix
        #if it.numbering != none {
            counter(heading).display()
          }
        #it.body
      ]
    ]
  }

  body
}
