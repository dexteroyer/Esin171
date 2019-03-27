beat(gary, barry).


contestant(
	_,
	name(gary),
	_,
	color(notgreen),
	).

contestant(
	_,
	name(larry),
	_,
	_,
	).

contestant(
	_,
	name(barry),
	_,
	color(yellow)
	).

contestant(
	position(4),
	name(harry),
	_,
	_
	).

contestant(
	_,
	_,
	number(3),
	color(green)
	).

contestant(
	position(1),
	_,
	number(2),
	_,
	).

contestant(
	position(2),
	_,
	_,
	color(green)
	).

contestant(
	_,
	_,
	_,
	color(red)
	).

contestant(
	_,
	_,
	_,
	color(blue)
	).

contestant(
	position(3),
	_,
	_,
	_
	).


start() :- write("The order is: "), query([gary,larry, barry, harry]).

%%query([A,B|C]) :- ().