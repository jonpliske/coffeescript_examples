# semicolons
# var
# return
# whitespace
# function
# triple =
# extra variable
# || to or
# extra parens

factorial = `function(n) {
  var result, n;
  if ((n === 0) || (n === 1)) {
    return 1;
  } else {
    result = (n * factorial(n-1));
    return result;
  }
};`

console.log factorial(1)
console.log factorial(2)
console.log factorial(5)
console.log factorial(10)



















# factorial = (n) ->
#   if n == 0 or n == 1
#     1
#   else
#     n * factorial(n-1)
