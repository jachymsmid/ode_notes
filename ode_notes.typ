#import "config.typ":*

//
// styling
//
#set text(font: "New Computer Modern", size: 11pt, lang: "cs")
#set page(
  margin: 1in,
  header: none,
  footer: none,
)
#set par(first-line-indent: (all: false, amount: 1em), spacing: 0.65em, justify: true,)


#set heading(numbering: clean_numbering("I.", "1.1"))

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
#align(horizon + center)[#title()[Obyčejné diferenciální rovnice] *Zápisky z přednášek* ]
#align(left + bottom)[Last changed: #datetime.today().display()]
#pagebreak()

#heading(level: 1, numbering: none )[Úvod]
Dostává se vám do rukou materiál, který vznikl jako moje osobní poznámky z přednášek
k magisterskému předmětu Obyčejné diferenciální rovnice.
Do těchto zápisků jsem ale dal tolik času, že jsem se rozhodl je rozšířit, zkompletovat
a poskytnou jako učební materiál.

Struktura zápisků je následující:
- Prvně se zabýváme lineárními rovnicemi prvního řádu, téměř veškerá jejich teorie zde probíraná by měla být známá z předešlých předmětů. Popíšeme různé metody řešení a také vyřkneme větu o existenci a jednoznačnosti.
- Navazujeme soustavami lineárních rovnic, kde si ukážeme diagonalizaci systémů, což je hojně užívaná technika jestliže máme více počátečních podmínek, pro které potřebujeme spočítat stejnou rovnici. Ukážeme nějaké metody
  řešení a dále zabrousíme do teorie dynamických systémů.
- Následují nelineární rovnice a systémy a jejich lokální chování. Stejně jako pro lineární systémy vyřkneme větu o existenci a jednoznačnosti. Dále se budeme zabývat linearizací a větou Hartman-Grobman. Následuje pojednání o stabilitě a bodech rovnováhy nelineárních systémů.
- V této kapitole se budeme snažit popsat globální chování nelineárních systémů.
  Uvedeme dynamické systémy, definujeme limitní množiny a atraktory, periodické orbity. Zavedeme Poincarého zobrazení. A nakonec uvedeme Poincaré-Bendixsonovu teorii.
- Poslední kapitolou je úvod do teorie bifurkací.
#v(0.5cm)
Tím že jsem na tomto textu pracoval sám může obsahovat chyby, jako třeba nekompletnost,
kostrbatá vysvětlení, nenázorné příklady, faktické a gramatické chyby atd.
Byl bych proto rád, kdybyste vy, jako čtenáři, se na textu také podíleli.
Nejlepší cestou jak k dílu přispět je pull request na githubu #link("https://github.com/jachymsmid/ode_notes")[https://github.com/jachymsmid/ode_notes].
Případně je možné připomínky zasílat na mail jachym.smid\@alumni.cvut.cz
#align(right)[Jáchym Šmíd \ Praha, 2026]

#pagebreak()

#outline(depth: 3)

#pagebreak()

#include "lin_rovnice.typ"
#include "lin_soustavy.typ"
#include "nelin_rovnice.typ"
#include "nelin_soustavy_lok.typ"
#include "nelin_soustavy_glob.typ"
#include "bifurkace.typ"
#include "appendix.typ"
