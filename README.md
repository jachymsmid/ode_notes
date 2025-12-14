# Obyčejné diferenciální rovnice
Poznámky k předmětu Obyčejné diferenciální rovnice. Zimní semestr 2025/26

# Jak psát typst
Typst se píše velmi podobně jako Markdown, dokumentaci lze nalézt [zde](https://typst.app/docs/reference/).
Taky se lze inspirovat zdrojovými soubory pro tyto poznámky. Typst lze psát v prostředí podobné Overleaf, jde o webovou [aplikaci](https://typst.app/play/) (je nutné si vytvořit účet). Nebo lze poznámky kompilovat lokálně pomocí příkazu `typst project_name.typ` anebo pro průběžnou kompilaci `typst watch project_name.typ`.
[Tady](https://qwinsi.github.io/tex2typst-webapp/cheat-sheet.html) je pěkný seznam symbolů v LaTeXu a jejich ekvivalent v typstu.
## Matematické rovnice
Syntax pro typst je jednodušší, než pro LaTeX protože lze používat znaky místo klíčových slov s '\'.
Např. systém Eulerových rovnic v 1D by se zapsal následovně (není nutné používat prostředí `\begin{align}` ani jakékoliv jiné)
```
$
rho_t + (rho u)_x = 0\
(rho u)_t + (rho u^2 + p)_x = 0\
(rho E)_t + ((rho E + p) u)_x = 0\
E = c_v T + 1/2 u^2
$
```
Všimněte si, že `rho` je už zadefinováno a zkompiluje se jako řecké písmeno, nevýhodou tohot přístu je, že víceznakové proměnné je nutné uzavřít do dvojitých uvozovek např. `"Int"(Gamma)` jako vnitřek uzavřené křivky.
Různé matematické symboly lze vyhledat [zde](https://typst.app/docs/reference/symbols/sym/)

Pro inline rovnice se používá `$x = 0$` a pro rovnice na vlastní řádek `$ x = 0 $` (s mezerami okolo rovnice).
## Věty, definice, ...
Pro věty, definice, poznámky atd. je naimportována knihovna [lemmify](https://typst.app/universe/package/lemmify) pro použití stačí napsat
```
#theorem(name: "Název věty")[Je-li ... pak ... $forall x in E arrow.double.l.r integral_0^1 x dif x = 0$]
```
Stejně lze používat rozhraní pro `definition, proof, remark, lemma, example,...`.
