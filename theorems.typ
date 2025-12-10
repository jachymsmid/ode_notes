#import "@preview/lemmify:0.1.8":*
#let (
  theorem, lemma,
  remark, example,
  proof, definition, rules: thm-rules
) = default-theorems("thm-group", lang: "cs")
#let theorem = theorem.with(numbering: none)
#let remark = remark.with(numbering: none)
#let definition = definition.with(numbering: none)

#let numbered_eq(content) = math.equation(block: true, numbering: "(1)", content)
#let imply = $quad arrow.r.double quad$
