#import "config.typ":*
#show: thm-rules
= Motivace
Motivací pro studium obyčejných diferenciálních rovnic (ODR) může být například rovnice
$y' = x(y-1),$
kterou lze jednoduše řešit analyticky, pokud se ji ale pokusíme vyřešit pomocí nějaké numerické metody, narazíme na spoustu problémů.
Je tedy dobré znát a umět analyzovat chování různých systémů obyčejných diferenciálních rovnic, abychom se těmto problémům mohli vyhýbat nebo aspoň věděli, že mohou nastat.
= Lineární rovnice prvního řádu
== Metody řešení
=== Metoda separace proměnných
Rovnice se separovatelnými proměnnými je rovnice typu
$ (dif y)/(dif x) = g(x)h(y), quad chevron.r x,y chevron.l in RR $
Použití separační metody je korektní za těchto předpokladů:
- $g(x)$ je spojitá
- $h(x)$ je spojitá

Metoda má tři kroky:

+ *Separace* $ (dif y)/(dif x) &= g(x)h(y)\ (dif y)/(h(y)) &= g(x) dif x $ #remark()[Tato rovnice je speciálním tvarem rovnice v diferenciálech $M(x,y)dif x+N(x,y)dif y = 0$]
+ *Integrace* $ integral (dif y)/(h(y)) &= integral g(x)dif x\ H(y) &= G(x) + C, quad C in RR $ Existence těchto funkcí je zaručena předpoklady.
+ *Inverze* $ y = H^-1( G(x) + C ) $ Existence inverzní funkce k funkci $H$ je také zaručena předpoklady.

=== Bernoulliova rovnice
Kanonický tvar Bernoulliovy rovnice je
$
y' + a(x)y = g(x)y^p,
$
kde $a(x), g(x)$ jsou spojité na $J$ a $p in RR$. Jedná se tedy o nelineární rovnici pro $p$ různé od jedničky a nuly.
Je-li $p = 0 or p = 1$ je rovnice lineární a separovatelná respektive separovatelná, Řešíme tedy případ $p in RR backslash {0,1}$. Za hledanou funkci dosadíme součin funkcí $y = u v$.
$
(u v)' + a u v &= g dot.op (u v)^p\
u'v+u v'+a u v &= g dot.op (u v)^p\
u'v+u(v'+a v) &=g dot.op (u v)^p
$
Zde bychom se chtěli zbavit závorky $v'+a v$ nalezením vhodné funkce $v$. Položíme tedy
$
v'+a v = 0
$
Tuto rovnici řešíme separací. Stačí nalézt jakokoliv funkci která této rovnici vyhovuje, můžeme tedy konstantu uvažovat nulovou, nebo jakoukoliv jinou která nám vyhovuje. Dalším krokem je dosazení $v$ do rovinice
$
u'v &= g dot.op (u v)^p\
(dif u)/(u^p) &= g v^(p-1)
$
Rovnici pro $u$ lze znovu řešit separací. Hledanou funkci teď dostaneme prostou desubstitucí $y = u v$. Můžeme si všimnout, že Bernoulliova metoda se skládá ze dvou metod separace proměnných.

=== Metoda variace konstant
Prvně navržena Lagrangem. Znovu řešíme rovnici typu
$
y' + a(x)y = g(x)
$
Při metodě variace konstant nejdříve určíme řešní homogenní rovnice (znovu separací)
$
y_h' &+ a(x)y_h = 0\
y_h &= C e^{-integral a dif x}
$
Nyní uvažujeme $C = C(x)$ a dosadíme $y_h$ do původní rovnice. Tím dostaneme rovnici pro $C(x)$ a neznámá funkce je potom $y = C(x) e^(-integral a dif x)$.

=== Metoda integračního faktoru
Navržena Eulerem. Řešíme rovnici typu
$
y' + a(x)y = g(x)
$
Metoda integračního faktoru spočívá v tom přenásobit obě strany nějakou vhodnou funkcí abychom levou stranu dostali pod společnou derivaci. Pro naši rovnici je vhodným integračním faktorem funkce $e^(integral a dif x)$
$
y' + a(x)y &= g(x) quad backslash dot.op e^(A(x)), " kde " A(x) = integral a dif x\
$
Zde použijeme znalosti že
$
& (d)/(dif x)(e^A y) = A e^A y (dif A)/(dif x) + e^A (dif y)/(dif x),
$
potom
$
(dif)/(dif x)(e^A y) = g e^A\
integral (dif)/(dif x)(e^A y) dif x = integral g e^A dif x\
e^A y = integral g e^A dif x\
y = e^(-A) integral g e^A dif x
$

== Věta o existenci a jednoznačnosti
Chtěli bychom vědět za jakých podmínek má smysl ODR řešit, s tím nám pomůže následující věta.

#linebreak()
#theorem()[Mějme obyčejnou diferenciální rovnici prvního řádu
$
y' = f(x,y).
$
Nechť $f$ a $(partial f)/(partial y)$ jsou spojité na $G subset.eq RR^2$ a ngjechť $[x_0, y_0] in G$, pak existuje právě jedno maximální řešení Cauchyovy úlohy
$
y' = f(x,y),quad y(x_0) = y_0
$]
#linebreak()

Důležité je si v praxi uvědomit co věta říká a co neříká, to se pokusíme ilustrovat na následujících příkladech.

#linebreak()
#example()[Mějme náldedující Cauchyho úlohu
$
y' = y, quad y(0) = 0
$
Funkce $f$ a $(partial f)/(partial y)$  jsou určítě spojité na $G = RR^2$ a bod $[0,0] in G$. Rovnice tedy splňuje podmínky existence jednoznačného maximálního řešení. To dostaneme třeba separací proměnných.
$
y' &= y\
(dif y)/(y) &= dif x, quad y != 0\
ln(abs(y)) &= x +C\
y &= plus.minus K e^x quad K in RR^+, x in RR
$
To je tedy obecné řešení, vidíme ale že pro danou počáteční podmínku řešení neexistuje, přitom ale splňujeme požadavky věty o existenci a jednoznačnosti. Věta nám ale neříká, že pro každou počáteční podmínku řešení existuje, říká jen že pro nějakou počáteční podmínku rešení existovat bude a že bude jednoznačné.]
#linebreak()

#linebreak()
#example()[Mějme následující Cauchyho úlohu
$
y' = sqrt(abs(y)), quad y(0) = 0
$
Funkce $f$ je spojitá na $RR$ ale její derivace už jen na $RR backslash {0}$ množinou na které hledáme řešení je $G = RR times RR backslash {0}$. Pro jednoduchost vyřešíme rovnici pouze pro $y > 0$.
$
(dif y)/(sqrt(y)) &= dif x\
2 sqrt(y) &= x + C\
y &= 1/2 (x+C)^2\
0 &= 1/2 (0 +C)^2 arrow.r.double C =0\
y &= x^2/2 quad x in RR
$
To je ale v podstatě neočekávaný výsledek, vždyť přece počáteční podmínka neleží v oblasti $G$. To je ale právě ono, tím že PP neleží v oblasti $G$, pak větu nelze užít a neříká nám o řešení nic. Věta *neříká* právě tehdy když $[x_0, y_0] in G$  pak rešení existuje a je jednoznačné, to je důležité si uvědomit.]
#linebreak()
