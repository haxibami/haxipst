#import "../lib/meta.typ": meta

#let resume(
  pdftitle: none,
  title: none,
  author: none,
  profile: [],
  date: none,
  size: "a4",
  header: none,
  doc,
) = {

  // metadata
  show: doc => meta(
    pdftitle: pdftitle,
    title: title,
    author: author,
    size: size,
    doc,
  )

  set text(lang: "ja", region: "JP", size: 10pt, font: (
    // "Latin Modern Roman",
    "Noto Serif CJK JP",
    "Noto Sans CJK JP",
    "Twitter Color Emoji"
  ))
  set par(leading: 1em)
  show par: set block(spacing: 1.5em)
  set enum(indent: 1em)
  set table(inset: 0.8em)
  set list(marker: ([•],[▹],[--]))
  set ref(supplement: "表")

  // header
  set page(
    header: [
      #set text(8pt)
      #header
    ],
  )

  // heading
  show heading: it => {
    if it.numbering == none {
      if it.level == 1 {
        block(inset: (y: 0.8em))[
          #text(font: ("Noto Sans CJK JP"), weight: "bold", size: 0.9em)[#underline(offset: 0.2em)[#it.body]]
        ]
      } else if it.level == 2 {
        block(inset: (y: 1em))[
          #text(font: ("Noto Sans CJK JP"), weight: "bold", size: 0.9em)[#it.body]
        ]
      } else {
        block(inset: (y: 1em))[
          #text(font: ("Noto Sans CJK JP"), weight: "medium", size: 1em)[#it.body]
        ]
      } 
    } else {
       if it.level == 1 {
        block(inset: (y: 0.8em))[
          #text(font: ("Noto Sans CJK JP"), weight: "bold", size: 0.9em)[
            #underline(offset: 0.2em)[#counter(heading).display() #it.body]
          ]
        ]
      } else if it.level == 2 {
        block(inset: (y: 1em))[
          #text(font: ("Noto Sans CJK JP"), weight: "bold", size: 0.9em)[#counter(heading).display() #it.body]
        ]
      } else {
        block(inset: (y: 1em))[
          #text(font: ("Noto Sans CJK JP"), weight: "medium", size: 1em)[#counter(heading).display() #it.body]
        ]
      }  
    }
  }

  // title
  align(center, text(font: ("Noto Sans CJK JP"), size: 1.2em)[
    #title
    #v(0.5em)
  ])
  align(right, text[
    #date
    ]
  )
  align(right, text[
    #profile
    ]
  )

  doc

}
