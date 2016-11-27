# Learn functional programming!
# Prof. David Mack

_ = require "underscore"

# ------------------------------------------------------------------------------
# Problem 8

#  Use 'reduce' to write a function to exponentiate functions 
# e.g. e(f,3) = (i) -­> f(f(f(i))))

# ------------------------------------------------------------------------------
# Solution

exponentiate = (f,n) ->
	(init) ->
		_.reduce Array(n).fill(f), ((a,f) -> f(a)), init

# ------------------------------------------------------------------------------
# Testing

# Example function:
addTwo = (n) -> n + 2

console.log exponentiate(addTwo,3)(7)
 
# exponentiate(addTwo,3)(7) #=> addTwo(addTwo(addTwo(7))) = 2 + 2 + 2 + 7 = 13

