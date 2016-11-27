# Learn functional programming
# Prof. David Mack

_ = require "underscore"

# ------------------------------------------------------------------------------
# Problem 1

# Map [1,2,3] ­-> [2,4,6]

# ------------------------------------------------------------------------------
# Solution

map = (data, theFunction) ->
	if data.length > 0 
		_.flatten [ [theFunction( _.head(data) )], map( _.tail(data), theFunction ) ], true
	else []

# ------------------------------------------------------------------------------
# Testing

d = [1,2,3]

double = (n) -> n * 2

console.log map d, double #=> [2,4,6]
