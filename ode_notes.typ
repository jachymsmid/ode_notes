#import "config.typ":*

// styling
#set text(font: "New Computer Modern", size: 11pt, lang: "cs")
#set page(
  margin: 1in,
  header: none,
  footer: none,
)
#set par(first-line-indent: (all: false, amount: 1em), spacing: 0.65em, justify: true,)


#set heading(numbering: clean_numbering("I.", "1.i"))

//
// math
// 
#show math.equation: box // no line breaks in inline math
// when refernecin equation show only the number
#show ref: it => {
  let eq = math.equation
  let el = it.element
  // Skip all other references.
  if el == none or el.func() != eq { return it }
  // Override equation references.
  link(el.location(), numbering(
    el.numbering,
    ..counter(eq).at(el.location())
  ))
}
// math wont break paragraphs, or it will it just wont indent hehe
#show math.equation: it => it + [#[ #[]<eq-end>]]
#show par: it => {
  if it.first-line-indent.amount == 0pt {
    // Prevent recursion.
    return it
  }
  context {
    let eq-end = query(selector(<eq-end>).before(here())).at(-1, default: none)
    if eq-end == none { return it }
    if eq-end.location().position() != here().position() { return it }
    // Paragraph start aligns with end of last equation, so recreate
    // the paragraph, but without indent.
    let fields = it.fields()
    let body = fields.remove("body")
    return par(
      ..fields,
      first-line-indent: 0pt,
      body
    )
  }
}

// ====================================================================================================
#align(horizon + center)[#title()[Obyčejné diferenciální rovnice] *Zápisky z přednášek* \ Zimní semestr 2025/26]
#align(left + bottom)[Last changed: #datetime.today().display()]
#pagebreak()

#outline(depth: 3)

#pagebreak()

#include "lin_rovnice.typ"
#include "lin_soustavy.typ"
#include "nelin_rovnice.typ"
#include "nelin_soustavy_lok.typ"
#include "nelin_soustavy_glob.typ"
#include "bifurkace.typ"
