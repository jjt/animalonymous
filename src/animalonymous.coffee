md5 = require('./md5').md5
animals = require('./animals').long
adjectives = require './adjectives'

console.log md5

upperFirst = (str) ->
  return str if str == ''
  str.charAt(0).toUpperCase() + str.slice(1)

# Takes an array, an integer and its range (max/min) and returns an element
# from the array corresponding to the integer's positon in the range
getArrayElFromInt = (arr, int, intmax = Math.pow(2,32), intmin = 0) ->
  ratio = int / (intmax - intmin)
  index = Math.floor ratio * arr.length
  arr[index]

hash = (input) ->
  # Get md5 of input
  inputHash = md5 input

  # Convert 8-byte hex chunks into 32-bit ints
  animalsHashInt = parseInt inputHash.substr(0,8), 16
  adjectivesHashInt = parseInt inputHash.substr(8,8), 16

  # Get the array elements corresponding to the converted integers
  animal = getArrayElFromInt animals, animalsHashInt
  adjective = getArrayElFromInt adjectives, adjectivesHashInt

  out = upperFirst(adjective) + " " + upperFirst(animal)

module.exports = hash

