# Learn functional programming!
# Prof. David Mack

_ = require "underscore"

# ------------------------------------------------------------------------------
# Problem 7 

#	 7. Design a recursive data structure to represent integers
#	 	1. Implement a function that takes an integer and transforms it into your new data structure
#	 	2. Write a function to add your data structures
#	 	3. Write a subtract function
#	 	4. Write a multiplication function

# ------------------------------------------------------------------------------
# Solution

# "Nacho-ral Numbers"

# Let us define zero
zeroNacho = []

# Let us define the successor function
successorNacho = (d) ->
	_.flatten [d,"Nacho."]

# Part 1.
numberToNacho = (n) ->
	if n == 0
		[]
	else
		_.flatten [numberToNacho(n-1),"Nacho."]

# Part 2.
addNachos = (a,b) ->
	a.concat b

# Part 3
subtractNachos = (m,n) ->
	if m.length >= n.length
		if _.isEmpty n
			m
		else
			subtractNachos m.slice(1), n.slice(1)
	else
		"ERROR: Negative nachos."

# Part 4
multiplyNachos = (p,q) ->
	if _.isEmpty q || _.isEmpty p
		[]
	else if _.isEmpty q.slice(1)
		p
	else if _.isEmpty p.slice(1)
		q
	else
		_.flatten addNachos p, multiplyNachos p, q.slice(1)

# ------------------------------------------------------------------------------
# Testing

oneNacho = successorNacho zeroNacho
twoNacho = successorNacho oneNacho
threeNacho = successorNacho twoNacho

console.log "oneNacho: ", oneNacho
console.log "twoNacho: ", twoNacho
console.log "threeNacho: ", threeNacho

# Part 1

console.log "numberToNacho 0: ",  numberToNacho 0
console.log "numberToNacho 1: ",  numberToNacho 1
console.log "numberToNacho 5: ",  numberToNacho 5

# Part 2

console.log "addNachos 0 0", addNachos [],[]
console.log "addNachos 0 3", addNachos numberToNacho(0),numberToNacho(3)
console.log "addNachos 2 3", addNachos ["Nacho.","Nacho."],numberToNacho(3)

console.log "multiplyNachoes 2 0", multiplyNachos ["Nacho.","Nacho."], []
console.log "multiplyNachoes 3 2", multiplyNachos ["Nacho.","Nacho.","Nacho."], ["Nacho.","Nacho."]
console.log "multiplyNachoes 4 1", multiplyNachos numberToNacho(4), numberToNacho(1)

# Part 3

console.log "subtractNachos 0 0", subtractNachos [],[]
console.log "subtractNachos 5 4", subtractNachos numberToNacho(5), numberToNacho(4)
console.log "subtractNachos 15 11", subtractNachos numberToNacho(15), numberToNacho(11)
console.log "subtractNachos 2 4", subtractNachos numberToNacho(2), numberToNacho(4)
