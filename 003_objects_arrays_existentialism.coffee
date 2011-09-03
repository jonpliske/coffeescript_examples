# whitespace
# commas
# colon means property assignment
# console.log philosophers['Jean-Paul Sartre'].interests?[0] ? 'unknown'

philosophers =
  'Immanuel Kant':
    school: 'enlightenment'
    interests: [
      'logic'
      'metaphysics'
    ]
  'Jean-Paul Sartre':
    school: 'existentialism'

# existential operator
console.log philosophers['Immanuel Kant'].interests[0]
console.log philosophers['Jean-Paul Sartre'].interests[0]
console.log philosophers['Friedrich Nietzsche'].school
