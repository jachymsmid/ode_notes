#import "config.typ":*
#show: thm-rules

= Soustava nelineárních diferenciálních rovnic - lokální chování
Soustavou nelineárních diferenciálních rovnic nazýváme
#numbered_eq($X' = F(t,X), quad X(0) = X_0.$)<nonlin_system>

Nechť $E$ je otevřená podmonožina $RR^n$, $X_0 in E$ a nechť $F in cal(C)^1 (E)$ pak
#numbered_eq($ dot(X) = F(X), quad X(0) = X_0, $) <auto_system>
nazýváme nelineárním autonomním systémem obyčejných diferenciálních rovnic. Poznamenejme, že jakýkoliv neautonomní systém lze autonomizovat přidáním jedné proměnné.

Oproti lineárním systémům může u nelineárních systémů nastat tzv. blow up. To znamená, že řešení utíká do nekonečna v nějakém konečném čase, to je samozřejmě nefyzikální. Ilustrujeme to na příkladě.

#linebreak()
#example()[
$
dot(x) = x^2, quad x(0) = 1\
(dif x)/(x^2) = dif t\
-1/(x) = t + C\
x = -1/(t-1), quad t in (-infinity, 1)
$
Je vidět, že 
$ lim_(t arrow 1^-) x(t) = infinity, $
tomu říkáme blow up řešení.]

== Existence a jednoznačnost
#linebreak()
#theorem()[Nechť $E$ je otevřená podmnožina $RR^n, X_0 in E$ a nechť $F in cal(C)^1 (E)$. Pak existuje $a >0$ takové, že počáteční problém $dot(X) = F(X), X(0) = X_0$ má jediné řešení na $chevron.l -a, a chevron.r$]
#linebreak()
#theorem(name: "Barrowův vzorec")[Je-li řešení $x(t)$ rovnice $dot(X) = F(X)$ na intervalu $I = (t_0,t_1), F in cal(C)^1 (I)$ a $F(X) != 0$ na $I$. Označme $a = lim_(t arrow t_0^+) x(t), b = lim_(t arrow t_1^-) x(t)$. Pak
$
t_1 - t_0 = integral_a^b 1/F(z) dif z
$]
#linebreak()

To nám říká pár věcí:
- Vzorec udává čas, který potřebuje řešení k tomu, aby vystoupalo
(resp. zklesalo) z hodnoty $a$ do hodnoty $b$
- Řešení konvergující k $b$ zleva (resp. zprava) pro $t arrow T$ ($T$ je krajní bod
intervalu, na kterém je řešení definováno) se napojí v konečném čase
na stacionární řešení $x = b$, právě tehdy když následující integrál konverguje (pro malé $delta$)
$
integral_(b - delta)^b 1/F(z) dif z\ ("resp. " integral_b^(b - delta) 1/F(z) dif z )
$ 

#theorem()[Nechť $E$ je otevřená podmnožina $RR^n$ obsahující $X_0$ a nechť $F in cal(C)^1(E)$. Nechť $u_1 (t)$ a $u_2 (t)$ je řešení nelineární soustavy na  $I_1$ respektive na $I_2$. Pak $0 in I_1 inter I_2$ a je-li $I$ libovolný otevřený interval obsahující $0$,
který je zároveň podintervalem $I_1 inter I_2$ pak $u_1 (t) = u_2 (t) " pro " forall t in I$.]
#theorem()[Nechť $E$ je otevřená podmnožina $RR^n$ a $F in cal(C)^1$. Pak pro $forall X_0 in E$ existuje největší 
otevřený interval $(alpha, beta)$ na němž má počáteční problém @auto_system jediné řešení $X(t)$. Tzn. má-li @auto_system řešení $Y(t)$ na $I subset (alpha, beta)$.
Pak $X(t) = Y(t) " pro " forall t in I$.]

== Maximální interval existence

== Tok definovaný diferenciální rovnicí

== Linearizace
Mějme nelineární autonomní systém:
$
dot(X) = F(X), quad F(0) = 0
$
Provedeme Taylorův rozvoj prvního řádu okolo nuly:
$
f_i (X) = f_i(0) + (partial f_i)/(partial x_1)(0) dot.op x_1 + dots + (partial f_i)/(partial x_n)(0) dot.op x_n + omega_i,
$
kde $omega_i$ je chyba způsobená zanedbáním členů vyšších řádů a $f_i(0) = 0$. Jako $A$ označíme Jacobiho matici funkce $F(x)|_0$ (tedy v bodě 0). Potom soustava
$
dot(X) = A dot.op X,
$
je linearizovaný systém k původnímu systému.

#linebreak()
#theorem()[Jestliže všechna vlastní čísla Jacobiho matice $A$ mají záporné reálné části. Pak bod 0 je asymptoticky stabilní bod rovnováhy nelinearizované soustavy. Jestliže je alespoň jedna reálná část kladná, pak je bod 0 nestabilní bod rovnováhy nelinearizované soustavy.]
#linebreak()

Tato věta nám dává informaci o stabilitě počátku pouze ze znalosti Jacobiho matice soustavy. Nedavá nám ale informaci o žádném jiném bodě mimo počátek, chtěli bychom ji proto zobecnit. Mějme tedy:
$
dot(X) = F(X), quad F(H) = 0
$
Bodem rovnováhy je tady nějaký bod $H$ a ne počátek. Provedeme-li znovu Taylorův rozvoj dostaneme
$
f_i (X) = f_i (H) + (partial f_i)/(partial x_1) (H) dot.op x_1 + dots +(partial f_i)/(partial x_n) (H) dot x_n + omega_i.
$
Provedeme transformaci soustavy tak, aby bod $H$ byl počátkem soustavy nové.
$
u_1 &= x_1 - h_1\
u_2 &= x_2 - h_2\
dots.v\
u_i &= x_i - h_i
$
Tím dostaneme soustavu $dot(U) = G(U)$, ve které je bod $H$ počátkem. Sestavíme-li Jacobiho matici této soustavy, zjistíme že je stejná jako kdybychom vyhodnotili Jacobiho matici původního systému v bodě $H$. To znamená, že pro vyhodnocení stability obecného bodu rovnováhy nemusíme provádět transformaci, ale stačí jen vyhodnotit Jacobiho matici v daném bodě.

== Stabilní a nestabilní varieta

== Věta Hartman-Grobman

== Stabilita

== Body rovnováhy




== Body rovnováhy nelineárního systému
#definition(name: "Bod rovnováhy")[Body rovnováhy jsou body pro něž platí
$
F(X_0) = 0.
$]
#linebreak()
Rozlišujeme několik druhů bodů rovnováhy:
- stabilní (Lyapunovsky) jestliže pro $ forall epsilon thick exists delta > 0 " tak, že " norm(X^0)< delta arrow.r.double norm(X(t,X^0)) < epsilon $ tzn. řešení neuteče z nějaké oblasti dané $epsilon$.
- atraktor existuje-li $ delta > 0 " tak, že " norm(X^0) < delta arrow.r.double lim_(t arrow infinity)X(t,X^0) = 0 $ (je-li bod rovnováhy v nule)
- asymptoticky stabilní #math.arrow.r.l.double.long je stabilní a atraktor
- nestabilní není-li stabilní

#linebreak()
#definition(name: "Oblast atraktivity")[]
#linebreak()
#theorem(name: "Hurwitzovo kriterium")[]

Mějme rovinný nelineární systém ve tvaru:
$
dot(x) &= P( x, y )\
dot(y) &= Q( x, y )
$


#definition(name: "Topologické sedlo" )[ Jestliže existují trajektorie $Gamma_i = { x in E; x = phi ( t, x_i ), t in RR }$
takové, že $limits(lim)_(t -> +oo) phi (t, x_i) = x_0, i = 1,2$
a dále existují trajektorie $Gamma_i = { x in E; x = phi ( t, x_i ), t in RR }$
takové, že $limits(lim)_(t -> -oo) phi (t, x) = x_0, i = 3,4$.

A existuje-li $delta$-okolí bodu $x_0$ takové, že ostatní trajektorie systému \@system
vycházející z bodu $X in N_delta ( x_0 ) backslash { x_0 }$ opustí $N_delta ( x_0 )$ při $t -> +oo$ či $t -> -oo$. Pak se $x_0$ nazývá topologické sedlo a trajektorie #for value in (1,2,3,4) [$Gamma_#value,$] se nazývají separatisy.]

Topologické sedlo má varietey:
- Stabilní varieta $S$ v bodě $x_0$ : $S = Gamma_1 union Gamma_2 union { x_0 }$

- Nestabilní varieta $U$ v bodě $x_0$ : $U = Gamma_3 union Gamma_4 union { x_0 }$

#lemma[ Buď $E subset RR^n$, E je otevřená množina, $F in cal(C)^1(E)$, $x_0 in E$, $F( x_0 ) = 0$.
- Je-li $x_0$ hyperbolický bod rovnoováhy systému \@system je $x_0$ topologické sedlo $arrow.l.r.double$ $x_0$ je sedlo linearizace $dot(X) = cal(D) F (x_0)$
- $F in cal(C)^2(E)$ 
  - Bod rovnováhy je stabilní (nestabilní) uzel $arrow.l.r.double$ $x_0$ je stabilní respektive nestabilní uzel linearizace $dot(X) = cal(D) F (x_0)$
  - Bod rovnováhy je stabilní (nestabilní) ohnisko $arrow.l.r.double$ $x_0$ je stabilní respektive nestabilní ohnisko linearizace $dot(X) = cal(D) F (x_0)$
- Nehyperbolický bod rovnováhy $x_0$ je střed linearizace. Pak $x_0$ je je buď
  + Střed
  + Ohnisko
  + Střed-ohnisko]

#definition(name: "Sektor")[Sektor je oblast ohraničená separatisami]

Sektorů máme tři typy, budeme je rozlišovat pouze dle obrázků
- Hyperbolický sektor
- Parabolický sektor
- Eliptický sektor

== Složené body rovnováhy
