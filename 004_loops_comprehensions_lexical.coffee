# loop
nums = [1, 3, 6, 9]
sumLoop = (values) ->
  sum = 0
  for num in values
    sum += num
  sum

console.log "sumLoop: #{sumLoop(nums)}"

# comprehensions
# console.log(sum += num) for num in values
sumComp = (values) ->
  sum = 0
  sum += num for num in values
  sum

console.log "sumComp: #{sumComp(nums)}"

doubleEach = (values) ->
  num * 2 for num in values

console.log "doubleEach: #{doubleEach(nums)}"


# lexical scope
prevSum = 10
sumLexical = (values) ->
  prevSum = 0
  prevSum += num for num in values
  prevSum

console.log "sumLexical: #{sumLexical(nums)}"
