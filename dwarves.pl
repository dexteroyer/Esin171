

inFrontOf(X, Y) :- behind(Y,X).

inFrontOf(grumpy,dopey).
inFrontOf(doc,droopy).
inFrontOf(doc,happy).
inFrontOf(happy,sleepy).
inFrontOf(happy,smelly).
inFrontOf(happy,bashful).
inFrontOf(sneezy,dopey).
inFrontOf(smelly,grumpy).
inFrontOf(smelly,stumpy).
inFrontOf(smelly,sneezy).
inFrontOf(dopey,droopy).
inFrontOf(sleepy,grumpy).
inFrontOf(sleepy,bashful).
inFrontOf(stumpy,dopey).

behind(X, Y) :- inFrontOf(Y, X).

behind(sleepy, stumpy).
behind(sleepy, smelly).
behind(sleepy, happy).
behind(bashful, smelly).
behind(bashful, droopy).
behind(bashful, sleepy).
behind(dopey, sneezy).
behind(dopey, doc).
behind(dopey, sleepy).
behind(smelly, doc).
behind(stumpy,sneezy).
behind(stumpy,doc).


start() :- 
	order([bashful, droopy, dopey, doc, happy, sneezy, smelly, sleepy, stumpy], [grumpy]).


order([Dwarf|[]], Order) :- write("The order is: "), write(Order), nl.
order([Dwarf|Others], [F|[]]) :- 
	(front(Dwarf, F) -> order(Others, [Dwarf, F])
		; order([Others], [F, Dwarf])
	).
order([Dwarf|Others], [F|Rest]) :-
	(front(Dwarf, F) -> order(Others, [Dwarf, F|Rest])
		; order([Dwarf|Others], [F, Rest])
	).