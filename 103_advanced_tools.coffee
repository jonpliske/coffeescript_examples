# prototype access
Number::minutes = -> this * 60
Number::ago = ->
  new Date((new Date).getTime() - this * 1000)

console.log new Date()
console.log 10.minutes()
console.log 10.minutes().ago()


# embedded JS
oldSkoolFunction = `function(name) {
  console.log("Hello, " + name);
}`
oldSkoolFunction("Jon")