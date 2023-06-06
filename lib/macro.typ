// custom
#let bl(it) = text(weight: "bold")[#it]
#let lt(it) = text(font: "Latin Modern Roman")[#it]
#let sm(it) = {
  set text(size: 0.8em)
  it
}
#let latex = text(
  font: "Latin Modern Roman", 
  [L#h(-0.35em)#text(size: 0.725em, baseline: -0.25em)[A]#h(-0.125em)T#h(-0.175em)#text(baseline: 0.225em)[E]#h(-0.125em)X]
)
#let ul(it) = box(stroke: (bottom: 0.1em), inset: 0pt, outset: (bottom: 0.25em))[#it]
