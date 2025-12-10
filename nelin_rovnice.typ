#import "theorems.typ":*
#show: thm-rules

= Nelineární diferenciální rovnice
Nelinární ODR v normálním tvaru nazýváme rovnici
$
y^n = f(t, y^(n-1), y^(n-2),dots, y),
$
zde $y^n$ značí $n$-tou derivaci. Tato rovnice má několik jednoduchých řešení ve speciálních případech.

#linebreak()
+ *$dot.double(y) = f(dot(y),t)$*

  Zde provedeme redukci řádu vhodnou substitucí.
  $ z(t) = dot(y)(t), quad dot(z)(t) = dot.double(y)(t) $
  Tím dostaneme systém rovnic, který už je jednoduché vyřešit.
  $ dot(y) &= z\ dot(z) &= f(t,z) $

+ *$dot.double(y) = f(dot(y),y)$*

  Zde znovu zavedeme vhodnou substituci
  $
  z = dot(y) arrow dot(z) = dot.double(y)
  $
  Tady si uvědomíme, že
  $
  dot(z) = dot.double(y) = f(y,z) = (dif z)/(dif t) = (dif z)/(dif y) (dif y)/(dif t) = (dif z)/(dif y) z
  $
  Našli jsme tedy obyčejnou diferenciální rovnici $(dif z)/(dif y) = 1/z f(y,z)$, jejímž řešením je funkce $z$, potom pro hledanou funkci víme že $y = integral z dif t$
