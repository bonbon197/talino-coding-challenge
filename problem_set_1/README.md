# Palindrom Pairs problem set
A simple ruby script that finds all pairs of words in a given list that when concatenated, forms a palindrome.

The method takes an array of strings as an input.

It then iterates over each word in the array twice, forming all possible pairs of words. For each pair, it concats the two words and checks if the resulting string is a palindrome. If yes, the indeces of the pair is then added into the pairs array.

The method then returns the pairs array, which contains the indexes of the word pairs that form a palindrome when concatenated.

There are also safeguards in place for edge cases like empty input arrays, single word arrays, empty elements in the array, case sensitivities, and large input arrays.

## How it works

First version of the script is very simple, straightforward, and doesn't account for large inputs which increases time complexity.

This current version however accounts for that.


First we create a hash map `word_map` where each word from the input array is a key and it's index would be the value.

Then the method iterates over each word in the input array.

The methoid generates all possible strings by removing characters from the start and end of the word input, for example the first word in the input array "Code"


```ruby
j = 0: prefix = "", suffix = "code"
j = 1: prefix = "c", suffix = "ode"
j = 2: prefix = "co", suffix = "de"
j = 3: prefix = "cod", suffix = "e"
j = 4: prefix = "code", suffix = ""
```

For each generated string, the method checks if the prefix is a palindrome and if the reversed suffix exists in the `word_map` hash. In this case the empty string "" and "e" are palindromes, and "edoc" exists in `word_map`

Since both conditions are met, the method adds the pair `[1, 0]` to the `pairs` array.

The method then returns the pairs array containing the indeces of the possible word pairs that could form a palindrome when concatenated.