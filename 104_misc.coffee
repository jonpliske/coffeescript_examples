# ranges
integers = (x for x in [0...10])
console.log integers
console.log integers[0...5]
console.log integers[0...-2]

# chained comparison
if 5 < x < 10 then console.log('bingo')

# string interpolation
superlative = "$#(^@**$&@"
console.log "isn't this #{superlative} great?!"

# conditional assignment
x = 16
x or= 21
y ?= 42
z = null
z or= 600
console.log x
console.log y
console.log z

# keywords
# if something() and nothing() or everything() then giveUp()
debug = yes
if x isnt 21 then console.log('WOWZAA') if debug