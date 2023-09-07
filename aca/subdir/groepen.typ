#import "../template.typ": *
#show: doc.with(
    title: "Groepen",
    course: "Algebraïsche structuren"
)

= Definitie

Def. Een _groep_ is een verzameling $V$ gecombineerd met een binaire bewerking $ast$ waarvoor de volgende voorwaarden gelden:

+ De bewerking is _gesloten_: $forall a, b in V: a ast b in V$
+ De bewerking is _associatief_: $forall a, b, c in V: (a ast b) ast c = a ast (b ast c)$
+ Er bestaat een _neutraal element_: $exists e in V: forall a in V: a ast e = e ast a = a$
+ Elk element heeft een _invers element_: $forall a in V: exists a^(-1) in V: a ast a^(-1) = e$

Not. $(V, ast)$

Vb.  $(NN, +)$

== Abelse groepen

Def. Een _abelse groep_ is een groep waarvoor bovendien geldt dat de binaire bewerking _commutatief_ is. Het hierboven gegeven voorbeeld is ook een abelse groep.