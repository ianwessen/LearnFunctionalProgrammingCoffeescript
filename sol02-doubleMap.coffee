# Learn functional programming!
# Prof. David Mack

_ = require "underscore"

# ------------------------------------------------------------------------------
# Problem 2

# Map [[1,2],[3,4],[5,6]] ­-> [[2,4],[6,8],[10,12]]

# Notes:
#
# map(f,a)[i] = f(a[i])
#
# doubleMap = (data, fn) ->
# 	map(data, map(fn))
#
# map always returns array the same length
# flatmap can return different length array

# ------------------------------------------------------------------------------
# Solution

# --- map(), From solution 1
map = (data, theFunction) ->
	if data.length > 0 
		_.flatten [ [theFunction( _.head(data) )], map( _.tail(data), theFunction ) ], true
	else []

doubleMap = (data, outerFunction) ->
	map data, (val) -> map val, outerFunction

# ------------------------------------------------------------------------------
# Testing

d = [[1,2],[3,4],[5,6]]

double = (n) -> n * 2

console.log doubleMap d, double
