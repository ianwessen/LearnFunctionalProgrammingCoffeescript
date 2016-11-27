# Learn functional programming!
# Prof. David Mack

_ = require "underscore"

# ------------------------------------------------------------------------------
# Problem 6

# Implement array max in functional style

# ------------------------------------------------------------------------------
# Solution

# --- reduce(), From solution 5
reduce = (data, init, fn) ->
	if _.head(data) && _.tail(data)
		reduce( _.tail(data), fn( init, _.head(data) ), fn)
	else 
		init

returnLarger = (m,n) ->
	if m > n then m else n

reduce(d, _.head(d), returnLarger)

# ------------------------------------------------------------------------------
# Test

d = [1,6,23,4,64,6923,2,77,22,15,4,1,20]

console.log reduce(d, _.head(d), returnLarger)


