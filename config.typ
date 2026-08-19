// theorems,...
#import "@preview/frame-it:2.0.0":*
#let (definition,) = frames(
  definition: ("Definice", gray),
  kind: "definition",
)
#let (theorem,) = frames(
  theorem: ("Věta",gray),
  kind: "theorem",
)
#let (proof,) = frames(
  proof: ("Důkaz", gray),
  kind: "proof",
)
#let (example,) = frames(
  example: ("Příklad",gray),
  kind: "example",
)
#let (remark,) = frames(
  remark: ("Poznatek", gray),
  kind: "remark",
)
#let (lemma,) = frames(
  lemma: ("Lemma",gray),
  kind: "lemma",
)

// theorems show rules
#let setup-frames(doc) = {
  show: frame-style(styles.boxy, kind: "definition")
  show: frame-style(styles.boxy, kind: "theorem")
  show: frame-style(styles.hint, kind: "proof")
  show: frame-style(styles.hint, kind: "example")
  show: frame-style(styles.hint, kind: "remark")
  show: frame-style(styles.boxy, kind: "lemma")

  doc
}

// numbered equations environment
#let numbered_eq(content) = math.equation(block: true, numbering: "(1)", content)

// implication sign
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
