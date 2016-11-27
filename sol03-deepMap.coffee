# Learn functional programming!
# Prof. David Mack

_ = require "underscore"

# ------------------------------------------------------------------------------
# Problem 3

# Map to any depth an array of arrays of arrays etc (aka a recursive data structure) with the double function
# Example input [1,[2,3],[[4,5],[[6]]]]
# Desired output [2,[4,6],[[8,10],[[12]]]]

# ------------------------------------------------------------------------------
# Solution

deepMap = (data, theFunction) ->
	unless _.isArray(data)
		theFunction data
	else if data.length > 0 
		_.flatten [ [deepMap( _.head(data), theFunction)], deepMap( _.tail(data), theFunction) ], true
	else []

# ------------------------------------------------------------------------------
# Testing

d = [1,[2,3],[[4,5],[[6]]]]

double = (n) -> n * 2

console.log "deepMap: ", deepMap d, double