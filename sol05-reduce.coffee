# Learn functional programming!
# Prof. David Mack

_ = require "underscore"

# ------------------------------------------------------------------------------
# Problem 5

# Implement reduce as a recursive function

# ------------------------------------------------------------------------------
# Solution	

reduce = (data, init, fn) ->
	if _.head(data) && _.tail(data)
		reduce( _.tail(data), fn( init, _.head(data) ), fn)
	else 
		init

# ------------------------------------------------------------------------------
# Testing

console.log reduce [1,2,3], 0, (a,b) -> a + b
