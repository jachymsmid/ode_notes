# Obyčejné diferenciální rovnice
Poznámky k předmětu Obyčejné diferenciální rovnice. Zimní semestr 2025/26

# Jak psát typst

## Matematické rovnice
Syntax pro typst je jednodušší, než pro LaTeX protože lze používat znaky místo klíčových slov s '\'.
Např. systém Eulerových rovnic v 1D by se zapsal následovně
```
$
rho_t + (rho u)_x = 0\
(rho u)_t + (rho u^2 + p)_x = 0\
(rho E)_t + ((rho E + p) u)_x = 0\
E = c_v T + 1/2 u^2
$
```
Pro inline rovnice se používá `$x = 0$` a pro rovnice na vlastní řádek `$ x = 0 $` (s mezerami okolo rovnice).
## Věty, definice, ...
Pro věty, definice, poznámky atd. je naimportována knihovna [lemmify](https://typst.app/universe/package/lemmify) pro použití stačí napsat
```
#theorem(name: "Název věty")[Je-li ... pak ... $forall x in E arrow.double.l.r integral_0^1 x dif x = 0$]
```
Stejně lze používat rozhraní pro `definition, proof, remark, lemma, example,...`.
