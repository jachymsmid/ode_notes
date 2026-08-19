#import "config.typ":*
#show: setup-frames
#pagebreak()
= Appendix
== Ospravedlnění metody separace proměnných
<appendix-separace>
V kapitole o lineárních diferenciálních rovnicích jsme jako první uvedli metodu separace, zde si ukážeme jak to s ní doopravdy je a jestli lze s derivací nakládat jako se zlomkem.

Upravíme si trochu definici a řekneme, že rovnice se separovatelnými proměnnými je rovnice ve tvaru
$ N(y) (dif y)/(dif x) = M(x) $
Integrujeme obě strany podle $x$.
$ integral N(y) (dif y)/(dif x) dif x = integral M(x) dif x $
Nyní použijeme následující substituci
$ u = y(x) quad arrow.r quad dif u =  (dif y)/(dif x) dif x $
tím dostaneme
$ integral N(u) dif u = integral M(x) dif x. $
Tyto integrály snad už lze vyhodnotit. Potom dostneme hledanou funkci desubstitucí.

Všimněme si ale, že pokud původní rovnici separujeme
$
N(y) (dif y)/(dif x) = M(x)\
N(y) dif y = M(x) dif x
$
a obě strany zintegrujeme
$ integral N(y) dif y = integral M(x) dif x $
Porovnáním této rovnice a předchozího výsledku zjistíme, že rovnice integrujeme podle jiných proměnných. Integrál na pravé straně je stejný v obou rovnicích, jediný rozdíl je ve značení. Pokud bychom první rovnici integrovali a provedli desubstituci, dostaneme stejný výsledek jako kdybychom rovnou integrovali.

Proto si tedy zavádíme zkratku kdy s derivací $y$ podle $x$ nakládáme jako se zlomkem. Je ale dobré vědět kdy, jak a proč si to můžeme dovolit.
