# Learn functional programming!
# Prof. David Mack

_ = require "underscore"

# ------------------------------------------------------------------------------
# Problem 9

# Let’s make a recursive fibonacci. Write a function that returns an object of 
# class Fib with a property ‘value’ and a method next(). Value is a member of 
# the fibonacci sequence, and next() returns an object of class Fib that has the 
# next value in the sequence

# ------------------------------------------------------------------------------
# Solution

class Fib
	constructor: (n) ->
		@value = @fib(n)
		@next = () -> new Fib(n + 1)
	
	fib: (m) ->
		if m < 2 then m else @fib(m - 2) + @fib(m - 1)

# ------------------------------------------------------------------------------
# Testing

console.log "fibSeven: ", new Fib(7)
console.log "fibSeven.next() #=> ", new Fib(7).next()
console.log "fibEight: ", new Fib(8)

