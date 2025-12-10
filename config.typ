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

// clean numbering for headings
#let clean_numbering(..schemes) = {
  (..nums) => {
    let (section, ..subsections) = nums.pos()
    let (section_scheme, ..subschemes) = schemes.pos()

    if subsections.len() == 0 {
      numbering(section_scheme, section)
    } else if subschemes.len() == 0 {
      numbering(section_scheme, ..nums.pos())
    }
    else {
      clean_numbering(..subschemes)(..subsections)
    }
  }
}
