# Learn functional programming!
# Prof. David Mack

_ = require "underscore"

# ------------------------------------------------------------------------------
# Problem 4

# Sum an array using reduce

# ------------------------------------------------------------------------------
# Solution

console.log _.reduce [1,2,3], (a,b) -> a + b #=> 6

