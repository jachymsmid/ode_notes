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
#definition(name: "Limitní body")[Nechť $Gamma$ jsou trajektorie @auto_system. Existuje-li posloupnost ${t_n} arrow infinity$ s $n arrow infinity$ tak, že $lim_(n arrow infinity) phi(t_n, x_0) = P.$ Pak $P$ se nazývá $omega$-limitní bod trajektorie $Gamma.$

Obobně existuje-li posloupnost ${t_n} arrow - infinity$ s $n arrow infinity$ tak, že $lim_(n arrow infinity) phi(t_n,x_0) = P$. Pak $P$ se nazývá $alpha$-limitní bod trajektorie $Gamma.$]
#linebreak()
#definition(name: "Limitní trajektorie")[Množina všech $omega$-limitních (respektive $alpha$) bodů se nazývá $omega$-limitní (respektive $alpha$) trajektorie a značí se $omega (Gamma)$ (respektive $alpha (Gamma)$).]
#linebreak()
#theorem()[Množiny $omega (Gamma), thick alpha(Gamma)$ a trajektorie $Gamma$ systému @auto_system jsou uzavřené podmnožiny $E$ a jsou-li kompaktní v $RR^n$ pak jsou i souvislé a neprázdné.]
#linebreak()
#theorem(name: "Atraktující množina")[Nechť množina $A subset E$, $A$ je uzavřená. Pak $A$ se nazývá atraktující množina systému @auto_system, existuje-li okolí $cal(U)$ množiny $A$ takové, že pro $forall x in cal(U)$ je $phi (t, x) in cal(U)$ pro
$t>0$ a $phi (t,x) arrow A$ pro $t arrow infinity.$ Obsahuje-li $A$ hustou orbitu, pak se nazývá atraktorem.]
#linebreak()
Z toho vyplývá pár věcí:
- Každý bod rovnováhy $x_0$ systému @auto_system je vlastní $omega$ i $alpha$ limitní množina. ($phi(t, x_0) = x_0 thick forall t in RR$)
- Má-li trajektorie $Gamma$ systému @auto_system jediný $omega$-limitní bod $x_0$, pak je to bod rovnováhy systému.
- Stabilní uzel, nebo ohnisko jsou $omega$-limitní množiny každé trajektorie (u nelineárních systémů pouze v nějakém okolí).
- Ne každý $omega$-limitní bod je atrkator, viz sedlo

== Periodické orbity

#definition(name: "Periodická orbita")[Peridodickou orbitou systému @auto_system nazýváme každou uzavřenou trajektorii systému @auto_system, která není bodem rovnováhy systému @auto_system.]
#linebreak()
#definition(name: "Stabilní periodická orbita")[Periodická orbita $Gamma$ se nazývá stabilní, jestliže pro $forall epsilon > 0$ existuje okolí $cal(N)_epsilon (Gamma)$ křivky $Gamma$ takové, že pro $forall x in cal(N)_epsilon (Gamma)$ je $d (Gamma_x^+, Gamma) < epsilon$
tzn. $forall x in cal(N)_epsilon (Gamma) " a " t gt.eq 0  imply d(phi(t,x), Gamma) < epsilon.$]
#linebreak()
#definition(name: "Nestabilní periodická orbita")[Nestabilní orbita je orbita, která není stabilní.]
#linebreak()
#definition(name: "Asymptoticky stabilní periodická orbita")[Asymptoticky stabilní orbita je orbita, která je stabilní a platí pro ni
$forall x in cal(N)_epsilon (Gamma) " je " limits(lim)_(t arrow infinity) d(phi_t(x), Gamma) = 0.$]
#linebreak()
#remark()[
- Periodická orbita odpovídá periodickému řešení systému @auto_system $ phi(t+T,x) = phi(t,x),"kde " min(T) " je perioda." $
- Periodické orbity mají též stabilní a nestabilní variety 
  $
  S(Gamma) = {x in cal(N) : d(phi_t (x),Gamma) arrow 0 " pro " t arrow +infinity}\
  U(Gamma) = {x in cal(N) : d(phi_t (x),Gamma) arrow 0 " pro " t arrow -infinity}\
  $]
#linebreak()
#theorem()[Máme-li periodickou orbitu $Gamma$ rovinného systému @auto_system a existuje-li trajektorie mající $Gamma$ jako svoji $omega$-limitní množinu. Pak každá trajektorie v nějakém _vnějším_ okolí má $Gamma$ jako $omega$-limitní množinu.]
#linebreak()
Této věty existují permutace pro vnější/vnitřní okolí a $alpha$/$omega$ limitní množiny.

#linebreak()
#definition(name: "Homoklinická orbita")[Je-li $x^*$ bod rovnováhy systému @auto_system $omega$-limitní a zároveň $alpha$-limitní množinou nějaké orbity $Gamma$ systému @auto_system, pak se $Gamma$ nazývá homoklinickou orbitou systému @auto_system.]
#linebreak()
#definition(name: "Heteroklinická orbita")[Existují-li v systému @auto_system dva body rovnováhy $x_1^*, thick x_2^*$ a je-li $x_1^*$ $omega$-limitní množinou nějaké orbity $Gamma$ a současně $x_2^*$ je $alpha$-limitní množina této orbity. Pak $Gamma$ se nazývá heteroklinická orbita.]
== Poincarého zobrazení
#definition(name: "Poincarého zobrazení")[Nechť $Gamma$ je periodickou orbitou systému @auto_system procházející bodem $x_0$ a nechť $Sigma$ je nadrovina kolmá na $Gamma$
v bodě $x_0$. Pro $forall x in Sigma$ dostatečně blízko $x_0$ tak, že řešení @auto_system
procházející bodem $x_0$ v čase $t=0$ prochází znovu plochou $Sigma$ v bodě $P(x)$ blízko $x_0$. Pak $x mapsto P(x)$ je Poincarého zobrazení.]
#linebreak()
#theorem()[Nechť $E subset RR^n$ je otveřená množina, $F in cal(C)^1$. Předpokládejme, že $phi_t (x)$ je periodické řešení @auto_system s periodou $T$ a že cyklus
$ Gamma = {x in RR^n : x = phi_t (x_0), 0 lt.eq t lt.eq T} $
je obsažen v $E$. Nechť $Sigma$ je ortogonální nadrovina k $Gamma$ v $x_0$ 
$ Sigma = {x in RR^n : (x - x_0) dot.op F(x_0) = 0} $
Pak existuje okolí $cal(N)_delta$ a jediná funkce $tau (x)$ definovaná a spojitě diferencovatelná pro $x in cal(N)_delta (x_0)$ tak, že $tau (x_0) = T$ a $phi_tau (x) in Sigma$ pro $forall x in cal(N)_delta (x_0).$
$ P(x) = phi_(tau(x)) (x). $]
#linebreak()
#remark()[Je-li $P in cal(C)^1, thick cal(U) = cal(N)_delta (x_0) inter Sigma$, pak 
- Pevné body $P(x)$ odpovídají periodickým orbitám $phi (dot.op, x)$ systému @auto_system.
- K $P(x)$ existuje inverze $P^(-1) in cal(C)^1.$]

=== Poincarého zobrazní pro rovinný systém
#theorem()[Nechť $x_0$ je počátek souřadnicového systému, $Gamma$ je periodická orbita a $x_0 in Gamma inter Sigma$. $Sigma$ je normála na $Gamma$ procházející $x_0$. Bod $0$ dělí přímku $Sigma$ na část $Sigma^+$ uvnitř $Gamma$ a na $Sigma^-$ vně $Gamma$. Nechť $s$ je vzdálenost od počátku
na přímce $Sigma$ pro $s>0$ na $Sigma^+$ a pro $s<0$ na $Sigma^-$. Dle definice Poincarého zobrazení definované na okolí $abs(s) < delta$ a platí $P(0) = 0$.

Použijeme $P'(0)$ k posouzení stability periodické orbity $Gamma$. Definujme posunutí po $Sigma$ 
$ d(s) = P(s) - s $
Pak $d(0) = 0, thick d'(s) = P'(s) - 1$. Z věty o střední hodnotě
$
(d(s) - d(0))/(s-0) = d'(sigma)\
d(s) = s d'(sigma), quad sigma in (0,s)
$
Je-li $d'(s)$ spojité zobrazení a $d'(0) != 0$ pak má $d'(s)$ stejné znaménko na nějakém okolí.
- Je-li $ d'(0)<0 imply cases(d(s) < 0 : s>0, d(s) > 0 : s<0) $
  tzn. cyklus je stabilní
- Je-li $ d'(0)>0 imply cases(d(s) < 0 : s<0, d(s) > 0 : s>0) $
  tzn. cyklus je nestabilní limitní cyklus a $alpha$-limitní cyklus.
]
#linebreak()
#theorem()[Buď $E subset RR^n$, $E$ je otevřená množina, $F in cal(C)^1 (E)$, $gamma(t)$ je periodické řešení systému @auto_system s periodou $T$. Pak derivace Poincarého zobrazení $P(s)$ podél přímky $Sigma$ kolmé na $Gamma$, kde
$Gamma = {x in RR^2 : x = gamma(t) - gamma(0), 0 lt.eq t lt.eq T}$ v $x=0$ je dáno jako $P'(0) = exp(integral_0^T nabla dot.op F(gamma(t))dif t)$. Dále je $gamma(t)$:
- stabilní limitní cyklus je-li $integral_0^T nabla dot.op F(gamma(t))dif t < 0$ 
- nestabilní limitní cyklus je-li $integral_0^T nabla dot.op F(gamma(t))dif t > 0$ 
- je-li $integral_0^T nabla dot.op F(gamma(t))dif t = 0$  pak cyklus může být stabilní, nestabilní, nebo semistabilní.]
#linebreak()
#definition()[Buď $P(s)$ Poincarého zobrazení. Pro $Gamma$ rovinný periodický cyklus systému @auto_system a $d(s) = P(s) - s$. Pak je-li $d(0) = d'(0) = dots = d^(\(n\))(0) = 0$ 
$ d^(\(n\)) (0) != 0 $
Pak se $Gamma$ nazývá cyklus násobnosti $n$, je-li $n = 1$ pak je cyklus tzv. jednoduchý.]
#linebreak()
#remark()[Lze ukázat, že
- je-li $n$ sudé, pak $Gamma$ je semistabilní cyklus.
- je-li $n$ liché, pak $Gamma$ je $ cases("stabilní" : thick d^(\(n\))(0) < 0, "nestabilní" : thick d^(\(n\))(0) > 0) $
]
=== Zobecnění pro systémy vyšších dimenzí
#theorem()[Nechť $Gamma: x = gamma(t), thick 0 lt.eq t lt.eq T$ je periodická orbita v $E$, $E subset RR^n$ je otevřená množina. Místo $P'(s)$ je nutné používat Jacobiho matici zobrazení
$ D P(x_0), thick x_0 in Gamma $
Linearizujeme podél $Gamma$ 
$ dot(x) = A(t) x, quad A(t) = D F(gamma(t)) $
Fundamentální matice systému je $phi.alt : dot(phi.alt) = A(t) phi.alt$ 
$ phi.alt(0) = EE, quad norm(D P(x_0)) = norm(phi.alt(T)) = norm(e^(B t)) $
kde $B$ je konstantní matice, vlastní čísla matice e^(B t) jsou $e^(lambda_j t)$, kde $lambda_j$ jsou vlastní čísla matice $B$. $lambda_i$ jsou charakteristické exponenty $gamma(t)$ a $e^(lambda_i t)$ jsou charakteristické násobky $gamma(t)$.]

== Stabilní varieta periodických orbit
#theorem(name: "O stabilní varietě periodické orbity")[Buď ..., ... je otevřená ... a ... je peridická orbita systému @auto_system s periodou ....

Buď .... tok systému @auto_system a .... Má-li ... charakteristických exponentů zápornou reálnou část (...) a ... kladnou reálnou část, pak existuje ... takové, že stabilní varieta
....]
== Poincarého-Bendixsonova teorie
#theorem(name: "Poincaré-Bendixsonova")[Nechť $F in cal(C)^1(E)$, $E$ je otevřená a taková, že @auto_system má trajektorii v nějaké kompaktní podmnožině $E$. Pak neobsahuje-li $omega(Gamma)$ žádné kritické body je $omega(Gamma)$ periodická orbita systému @auto_system.]
#linebreak()
#theorem()[Uvnitř limitního cyklu planárního systému @auto_system existuje alespoň jeden bod rovnováhy.]
#linebreak()
#theorem(name: "Bendixsonova kritérium")[Nechť $F in cal(C)^1(E)$, $E subset RR^2$ je otevřená jednoduše souvislá. Jestliže divergence vektorového pole $F$ není identicky rovná nule a nemění-li znaménko v $E$, pak systém @auto_system nemá periodickou orbitu v $E$.]
#linebreak()
#proof(name: "Důkaz sporem")[doplnit ...]
