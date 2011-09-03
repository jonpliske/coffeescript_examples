# pattern matching
# feature of Javascript 1.7

# set multiple values
[x, y] = [1, 2]
console.log "x: #{x} y: #{y}"

# swap values
[y, x] = [x, y]
console.log "x: #{x} y: #{y}"

# deeply nested values
json =
  deal:
    id: "not-a-number"
    title: "$25 for $0 Worth of Math - NaN% Savings!"
    division:
      id: "chicago"
      name: "Chicago"
      lat: 41.85
      lng: -87.65
      timezone: "Central Time (US & Canada)"
    placementPriority: "featured"

{id : dealId, title : dealTitle, division: {id : divisionId, name : divisionName}} = json.deal

console.log dealId
console.log dealTitle
console.log divisionId
console.log divisionName

{lat, lng} = json.deal.division
console.log lat
console.log lng

# node.js
{log, inspect} = require 'util'

console.log inspect
log inspect json