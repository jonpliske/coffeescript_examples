# expressions have value, statements do not
# expressions can be passed as args, assigned to variables
foo = 1
console.log(if foo == 1 then "bar" else "baz")

# changes JS semantics
# "most important feature in terms of affecting how you structure code"
# every language element "knows how to return itself"
factorial = (n) ->
  if n == 0 or n == 1
    1
  else
    n * factorial(n-1)

# wrap any statement in a closure
processProperties = (name for name of process)
console.log processProperties[0...5]
