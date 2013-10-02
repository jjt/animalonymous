var input = 'test@animalonymous.com',
    anml = require('../'),
    salt = "saltysalt111",
    results = [
      "Input: " + input,
      "hash(input): [" + anml.hash(input) + "]",
      "hash(input, \"saltysalt111\"): [" + anml.hash(input, salt) + "]",
      "hashStr(input): " + anml.hashStr(input),
      "random(): [" + anml.random() + "]",
      "randomStr(): " + anml.randomStr()
    ];



console.log(results.join("\n"));
