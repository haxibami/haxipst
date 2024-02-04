#let set-metadata(
  pdf-title: none,
  pdf-author: (),
  pdf-keywords: (),
  pdf-date: auto,
  body,
) = {

  set document(title: pdf-title, author: pdf-author, keywords: pdf-keywords, date: pdf-date)

  body
}
