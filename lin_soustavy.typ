#import "config.typ":*
#show: thm-rules
= Soustava lineárních diferenciálních rovnic
Máme homogenní soustavu ODR ve tvaru
#numbered_eq($
X' = A X.
$)<lin_homo_system>
#remark()[Každá homogenní soustava má triviální řešení $X = 0$.]

== Systémy s diagonální maticí A
Tedy systémy bez vzájemného propojení (uncoupled systems) jsou rovnice typu
#numbered_eq($
X' = A X,
$)<uncoupled_system>
kde matice $A$ je diagonální. Pro takové systémy lze jednoduše najít řešení, při pridání počáteční podmínky, pomocí separace proměnných
$
x'_i = a_(i i) x_i quad arrow.long quad x_i = c_i e^(a_(i i) t).
$
nebo ekvivalentní maticový zápis
$
X(t) = "diag"(e^(a_(i i) t)) dot.op C,
$
kde $C = X(0)$.


== Diagonalizace
Je technika, která nám pomůže převést obecný hommogenní lineární systém @lin_homo_system na systém s diagonální maticí.

#linebreak()
#definition(name: "homeomorfismus")[O zobrazení říkáme, že je homeomorfní pokud je bijektivní, spojité a inverzní zobrazení je též spojité.]
#linebreak()
#theorem()[Mějme matici $A$ typu $n times n,$ jež má $n$ různých reálných vlastních čísel $lambda_i.$ Pak ${V_i}$ (množina vlastních vektorů) tvoří bázi v $RR^n$.
Matice $P = ( V_1 bar.v dots bar.v V_n )$ je invertibiliní a $ P^(-1) A P = "diag"(lambda_1, dots, lambda_n). $]
#linebreak()
#theorem(name: "Obecněji")[Lineární transformace $T$ $n$-tého řádu, která vektoru $Y in RR^n$ přiřadí stavový vektor $X = T Y$  systému @uncoupled_system, zobrazuje systém @uncoupled_system na opět lineární systém #numbered_eq($Y' = B Y,$)<system2> kde matice $B = T^(-1) A T$ a systémy @uncoupled_system a @system2 jsou homeomorfní v $RR^n$. Zachovává-li zobrazení i orientaci pohybu, říkáme že jsou systémy navzájem topologicky ekvivalentní.]

#linebreak()
Proces diagonalizace provedeme následovně: definujeme lineární transformaci souřadnic
$ Y = P^(-1) X $
kde $P$ je invertibilní matice definovaná v předchozí větě. Potom
$
X = P Y\
Y' = P^(-1) X' = P^(-1) A X = P^(-1) A P Y
$
a tím dostaneme diagnoalizovaný systém
$ Y' = "diag"(lambda_1, dots , lambda_n) Y, $
který má řešení
$ Y(t) = "diag"(e^(lambda_1 t), dots, e^(lambda_n t)) Y(0) $
A potom, protože $Y(0) = P^(-1) X(0)$ a $X(t) = P Y(t)$, lze jednoduše odvodit že @lin_homo_system má řešení
$ X(t) = P E(t) P^(-1) X(0), $
kde $E(t)$ je diagonální matice
$ E(t) = "diag"(e^(lambda_1 t), dots, e^(lambda_n t)). $

== Princip superpozice řešení pro homogenní soustavy
Jestliže $X_1, dots , X_n$ jsou řešení homogenní soustvay ODR na intervalu $J$ a $C_1, dots, C_n$ jsou libovolné konstanty, pak lineární kombinace $C_1 X_1+dots+C_n X_n$ je opět řešením soustvay na $J$.

=== Fundamentální systém

== Exponenciální matice
O lineární rovnici víme, že obecné řešení má tvar $x = c e^(a t)$, chtěli bychom najít nějakou paralelu k systémům rovnic, přece jenom je jejich zápis velice podobný. K tomu se nám bude hodit exponenciální matice.

#linebreak()
#theorem()[Je-li $A$ typu $n times n$ reálná či komplexní matice, tak maticová řada $limits(sum)_(k = 0)^infinity (A^k t^k)/k!$ konverguje k matici $e^(A t)$ třídy $n times n$, která má valstnosti:
+ $dif/(dif t) e^(A t) = A e^(A t) = e^(A t) A$
+ $e^((t+s)A) = e^(A t) e^(A s)$
+ $e^(A 0) = II and e^(A t)$ je invertibilní $and e^(A t) e^(- A t) = II$, kde $II$ je jednotková matice.]
#linebreak()

Bude-li $X(0) = u_j$ pak $ X = e^(A t) = e^(lambda_j t) e^(A t) e^(-lambda_j t) u_j = e^(lambda_j t) e^((A -lambda_j I)t) = e^(lambda_j t) (I + (A - lambda_j I)t + dots ) u_j = e^(lambda_j t) u_j. $

#linebreak()
#theorem(name: "Základní věta pro lineární systémy")[Nechť A je typu $n times n$. Potom pro dané $X_0 in RR^n$, má Cauchyho problém
$
X' = A X\
X(0) = X_0
$
jednoznačné řešení
$
X(t) = e^(A t) X_0.
$]

#linebreak()
#theorem(name: "Cayley-Hamilton")[Nechť ... je charakteristický polynom matice typu .... Pak maticový polynom získaný zaměněním ... za ... do ... splňuje ....]
== Metody řešení soustav lineárních rovnic
=== 1. Eulerova metoda (pro matici s konstantními koeficienty)
Řešení odhadujeme ve tvaru $x_i = u_i e^{lambda_i}$, kde $(u_i, lambda_i)$ je vlastní pár matice $A$. Může nastat několik případů

==== $n$ lineárně nezávislých vektorů
#theorem()[Nechť matice $A$ má $n$ lineárně nezávislých vektorů $V^1,dots,V^n$, které jsou příslušné k (ne nutně různým!) vlastním číslům. Potom
$
V^1 e^{lambda_1 t}, V^2e^{lambda_2 t}, dots, V^n e^{lambda_n t}, 
$
je fundamentální systém řešení soustavy na $RR$.]
#linebreak()
To může nastat má-li matice $A$ $n$ různých vlastních čísel, matice $A$ je symetrická, $dots$

==== komplexní vlastní číslo
Dostaneme-li komplexní vlastní číslo $lambda_i = alpha + beta i$, výsledkem by mělo být
$
X_1 = V^1 e^((alpha +beta i)t)
$
to je ale komplexní funkce a taková nás moc nezajímá, protože jsme řešili reálný problém, chtěli bychom tedy reálné výsledky. Zkusíme zda by soustavu neřešila pouze reálná část výsledku.
$
"Re"(x') = ("Re"(x))' &= "Re"(A x) = A dot.op "Re"(x)\\
("Re"(x))' &= A dot.op "Re"(x)\\
X' &= A dot.op X
$
to znamená, že reálná část je řešením, to samé platí pro imaginární část. Mějme tedy komplexní vlastní číslo $lambda = alpha +beta i$ a odpovídající vlastní vektor $U = V + W i$.
$
X &= U e^{lambda t} = (V + W i)e^(alpha +beta i) = (V+W i) e^(alpha t) e^(beta i t) =\
&= (V + W i)e^(alpha t) (cos(beta t)  +i sin(beta t) ) = e^(alpha t) (V cos(beta t)- W sin(beta t))+\
&+ i e^(alpha t)(W cos(beta t)+ V sin(beta t))\
\
"Re"(X) &= e^(alpha t)(V cos(beta t)- W sin(beta t))\
"Im"(X) &= e^(alpha t)(W cos(beta t)+ V sin(beta t))\
\
X &= C_1 "Re"(X) + C_2 "Im"(X)
$

==== méně než $n$ lineárně nezávislých vlastních vektorů

== Rovinné systémy
Jsme-li v $RR^2$ označujeme systém @lin_homo_system jako rovinný. Diagonalizujeme-li systém
$
X' = A X\
X' = B X, quad B = P A P^(-1),
$
kde $P = ( V_1 bar.v V_2 )$, pak nastává právě jedna z možností

+ $B = "diag"( lambda_1, lambda_2 )$ má-li $A$ 2 různá vlastní čísla $lambda_(1,2)$, #v(0.3cm)
+ $B = mat(lambda,1;0,lambda)$ je-li $lambda$ dvonásobné reálné vlastní číslo, #v(0.3cm)
+ $B = mat(alpha,- beta;beta,alpha)$ je-li $lambda_(1,2) = alpha plus.minus i beta$ sdružené komplexní vlastní číslo.
Potom lze určit řešení jako

+ $X(t) = "diag"(e^(lambda_1 t), e^(lambda_2 t)) X(0)$#v(0.3cm)
+ $X(t) = e^(lambda t) mat(1, t; 0, 1) X(0)$#v(0.3cm)
+ $X(t) = e^(alpha t) mat(cos(beta t), -sin(beta t); sin(beta t), cos(beta t)) X(0)$

=== Body rovnováhy
Bod pro nějž platí $F(X^*) = 0$ nazýváme bod rovnováhy. Pro lineární systém $F(X) = A X + B$. Pro lineární homogenní systém je bodem rovnováhy počátek.
Rozlišujeme následující body rovnováhy pro rovinný homogenní systém
- Uzel: $lambda_1, lambda_2 in RR quad and quad lambda_1 != lambda_2$
- Sedlo: $lambda_1, lambda_2 in RR quad and quad lambda_1 lambda_2 < 0$
- Ohnisko: $lambda_(1,2) in CC$
- Střed: $lambda_(1,2) = plus.minus i beta$

== Obcné řešení nehomogenního problému
Mějme soustavu ve tvaru
#numbered_eq($
X' = A X + F(t),
$)<nonhom_system>
kde A je matice typu $n times n$ a $F (t)$ je spojitá vektorová funkce.
#linebreak()
#definition(name: "Fundamentální matice")[Libovolné řešení rovnice
$
X' = A X.
$
značíme $Phi (t)$ a nazýváme ho fundamentální systém nebo fundamentální matice. $Phi (t)$ je $n times n$ a splňuje
$
Phi'(t) = A Phi (t) quad forall t in RR.
$
]
#linebreak()
#theorem()[Je-li $Phi (t)$ fundamentální systém rovnice @lin_homo_system, potom řešení nehomogenní rovnice @nonhom_system s počáteční podmínkou $X(0) = X_0$ je jednoznačné a ve tvaru
$
X (t) = Phi (t) Phi^(-1) (0) X_0 + integral_0^t Phi (t) Phi^(-1) (tau) F(tau) dif tau.
$]
#linebreak()
#remark()[]
#linebreak()
#definition(name: "Princip superpozice")[Nechť $X_C = C_1 X_1 + dots + C_n X_n$ je obecné řešení homogenního problému a nechť $X_P$ je řešení .... Pak obecné řešení má tvar
$
X = X_C + X_P
$]

==== Metoda variace konstant


== Tok lineárního systému
Uvažujme systém
$
X' = A X.
$
#linebreak()
#definition(name: "Tok lineárního systému")[Množina zobrazení $e^(A t):RR^n mapsto RR^n$ se nazývá tokem lineárního systému. (Popisuje pohyb bodů ... po trajektoriích systém ...)]
#linebreak()
#definition(name: "Hyperbolický lineární systém ODR")[Mají-li všechna valstní čísla matice $A$ nenulovou reálnou část, říkáme o lineárním systému ODR že je hyperbolický]
#linebreak()
#definition(name: "Invariantní množina")[Podnožina $E subset RR^n$ se nazývá invariantní k toku $e^(A t)$, jestliže platí $e^(A t) E in E$ pro $forall t in RR$]
#linebreak()
#definition()[Mějme lineární systém $dot(X) = A X$ a nechť $w_j = u_j + i v_j$ je zobecněný vlastní vektor matice $A$ odpovídající vlastnímu číslu $lambda_j = alpha_j + i beta_j$ a nechť  $ {u_1, dots, u_r, v_(k+1),dots,v_r}$ je báze $RR^n, (n = 2 r -k)$.
- Pak podprostor vytvořený zobecněnými vlastními vektory jimž odpovídají vlastní čísla se zápornou reálnou částí se nazývá *stabilní podprostor* a značíme ho $E^s = "span"{u_j,v_j : alpha_j < 0}$
- Podprostor vytvořený zobecněnými vlastními vektory jimž odpovídají vlastní čísla s kladnou reálnou částí se nazývá *nestabilní podprostor* a značíme ho $E^u = "span"{u_j,v_j : alpha_j > 0}$
- Podprostor vytvořený zobecněnými vlastními vektory jimž odpovídají vlastní čísla s nulovou reálnou částí se nazývá *centrální podprostor* a značíme ho $E^c = "span"{u_j,v_j : alpha_j = 0}$]
#linebreak()
#theorem()[Vlastnosti řešení lineárního systému v invariantních podprostorech
- Je-li $X_0 in E^s$ pak pro $forall t in RR$ je $limits(lim)_(t arrow infinity) e^(A t) X_0 = 0$. Bod rovnováhy je asymptoticky stabilní.
- Je-li $X_0 in E^u$ pak pro $forall t in RR$ je $limits(lim)_(t arrow infinity) e^(A t) X_0 = plus.minus infinity$. Bod rovnováhy je asymptoticky nestabilní.]
