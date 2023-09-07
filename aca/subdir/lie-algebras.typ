#import "../template.typ": *
#show: doc.with(
    title: "Lie-algebra's",
    course: "Algebraïsche structuren"
)

= Definitie

Def. Zij $F$ een veld. Een _Lie-algebra_ $L$ is een vectorruimte samen met een bilineaire afbeelding, het Lie-haakje genaamd; $[dot, dot]: L times L -> L$, zodat de volgende uitspraken gelden:

+ De afbeelding is _alternerend_: $forall x in L: [x, x] = 0$
+ De _Jacobi-identiteit_ geldt: $forall x, y, z in L: [x, [y, z]] + [z, [x, y]] + [y, [z, x]] = 0$

= Gevolgen van de definitie

Prop. Als $op("char")(F) eq.not 2$, dan geldt $[x, y] = -[y, x] forall x, y in L$. \
Bew. $ [y, x] &= [y, x] - [x + y, x + y] & " (toevoegen van nul)" \ &= [y, x] - [x, x] - [x, y] - [y, x] - [y, y] & " (distributie van Lie-haakje)" \ &= [y, x] - [y, x] - [x, y]  & " (schrappen van Lie-haakjes met gelijke argumenten)" \ &= -[x, y] \
qed $

Andersom geldt ook dat Prop. $[x, x] = -[x, x] <=> 2[x, x] = 0 <=> op("char")(F) = 2 or [x, x] = 0$.

= Belangrijke Lie-algebra's

== De algemene lineaire groep

Def. De _algemene lineaire groep_ (Eng. "general linear group") van een unitaire ring $R$ en van orde $n$ bestaat uit inverteerbare $n times n$-matrices met elementen in $R$, met als groepsoperatie de matrixvermenigvuldiging.

Not. $op("GL")_n (R)$

Prop. Indien $R$ naast een unitaire ring ook een veld is, is de algemene lineaire groep ervan ook een Lie-algebra, met als Lie-haakje de commutator #footnote([Def. De commutator van twee matrices $A$ en $B$ is gelijk aan $A B - B A$, voor alle matrices waar deze definitie steek houdt.]). \
Bew. Teneinde een Lie-algebra te zijn moet de commutator alternerend zijn en aan de Jacobi-identiteit voldoen. Het eerste is triviaal aan te tonen:

$ [A, A] = A^2 - A^2 = 0 $

De Jacobi-identiteit