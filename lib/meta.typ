#let meta(
  pdftitle: none,
  title: none,
  author: none,
  size: "a4",
  doc,
) = {

  set document(title: pdftitle, author: author)
  set page(paper: size)

  doc
}
