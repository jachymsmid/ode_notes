#import "config.typ":*
#show: thm-rules

= Soustava nelineárních diferenciálních rovnic - globální chování

== Dynamické systémy
#definition(name: "Dynamický systém")[Dynamický systém na $E$ je zobrazení
$ phi: RR times E mapsto E, $
kde $E$ je otevřená podmnožina $RR^n$ a pokud $phi_t (x) = phi (t,x)$, potom $phi_t$ splňuje
+ $phi_0 (x) = x " pro " forall x in E$
+ $phi_t compose phi_s (x) = phi_( t + s ) " pro " forall t,s in RR " and " x in E$]
#linebreak()
#remark()[Je-li matice $A$ typu $n times n$ potom funkce $phi (t,x) = e^(A t) x$ definuje dynamický systém na $RR^n$ a také platí, že pro libovolné $x_0 in RR^n$ je funkce $phi (t,x_0)$ řešení počáteční úlohy
$
dot(x) = A x\
x(0) = x_0.
$]
#linebreak()

Obecně, je-li $phi (t,x)$ dynamický systém na $E subset RR^n$, pak funkce
$ f(x) = dif/(dif t) phi (t, x) bar.v_(t=0) $
definuje vektorové pole na $E$ a pro libovolné $x_0 in E$, je $phi (t, x_0)$ řešením počáteční úlohy
$
dot(x) = f(x)\
x(0) = x_0.
$

#linebreak()
#theorem(name: "O globální existenci")[Pro $F in cal(C)^1 (RR^n)$ a pro $forall x_0 in RR^n$, má počáteční problém
#numbered_eq($
dot(x) = F(x)/(1 + abs(F(x)))\
x(0) = x_0,
$)<sys1>
jednoznačné řešení $x(t)$ definované pro $forall t in RR$, tedy @sys1 definuje dynamický systém na $RR^n$, dále platí že @sys1 je topologicky ekvivalentní k $dot(x) = F(x)$ na $RR^n$.]

== Limitní množiny, atraktory
Uvažjme autonomní systém @auto_system
s $F in cal(C)^1 (E),$ kde $E$ je otevřená podmnožina $RR^n.$ Uvedli jsme že tato rovnice definuje dynamický systém $phi (t,x)$ na $E$. Pro $x in E$ funkce $phi (dot.op,x): RR mapsto E$ definuje křivku řešení, trajektorii a orbitu systému @auto_system procházející bodem $x_0 in E$.

#definition(name: "Trajektorie")[Trajektorí bodem $x_0$ nazýváme množinu
$ Gamma_(x_0) = {x in E : x = phi(t, x_0), forall t in R}, $
speciálně množiny
$
Gamma_(x_0)^+ = {x in E : x = phi(t, x_0), forall t > 0}\
Gamma_(x_0)^- = {x in E : x = phi(t, x_0), forall t < 0}
$
nazýváme pozitivní respektive negativní polotrajektorie.]
#linebreak()
#definition(name: "Limitní body")[Nechť $Gamma$ jsou trajektorie @auto_system. Existuje-li posloupnost ... tak, že .... Pak ... se nazývá ...-limitní bod trajektorie ....

Obobně existuje-li posloupnost ... tak, že .... Pak ... se nazývá ...-limitní bod trajektorie ....]
#linebreak()
#definition(name: "Limitní trajektorie")[Množina všech ...-limitních (respektive ...) bodů se nazývá ...-limitní (respektive ...) trajektorie a značí se ... (respektive ...).]
#linebreak()
#theorem()[Množiny ... a ... trajektorie ... systému @auto_system jsou uzavřené podmnožiny ... a jsou-li kompaktní v ... pak jsou i souvislé a neprázdné.]
#linebreak()
#theorem(name: "Atraktující množina")[]

== Periodické orbity

== Poincarého zobrazéni

== Stabilní varieta periodických orbit
