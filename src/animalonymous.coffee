nodeHash = require 'node_hash'

animals = require('./animals').long
adjectives = require './adjectives'

upperFirst = (str) ->
  return str if str == ''
  str.charAt(0).toUpperCase() + str.slice(1)

# Uses 8-character pieces of the md5 hash of input and modulo divides it by
# animals.length and adjectives.length (respectively) to get a combined name
# ex "Wiggly Muskox"
hash = (input) ->
  inputHash = nodeHash.md5 input
  animalHashInt = parseInt inputHash.substr(0,8), 16
  adjectiveHashInt = parseInt inputHash.substr(8,8), 16
  animal = animals[animalHashInt % animals.length]
  adjective = adjectives[adjectiveHashInt % adjectives.length]
  out = upperFirst(adjective) + " " + upperFirst(animal)

module.exports = hash

