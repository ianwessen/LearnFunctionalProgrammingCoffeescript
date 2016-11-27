# Learn functional programming!
# Prof. David Mack

_ = require "underscore"

# ------------------------------------------------------------------------------
# Problem 10

#	 Write the Y Combinator in ML

Y = (g) ->
	( (f) -> g (arg) -> f(f)(arg) )( (f) -> g (arg) -> f(f)(arg) )

# ------------------------------------------------------------------------------
# Testing

factorialGenerator = (factorial) ->
	(x) ->
		if x is 1 then 1 else x * factorial(x-1)

console.log "Y Combinator: ", Y(factorialGenerator)(6) #=> 720

