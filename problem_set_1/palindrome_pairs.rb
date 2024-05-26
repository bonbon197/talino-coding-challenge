def palindrome_pairs(words)
    pairs = []

    words.each_with_index do |word1, i|
        words.each_with_index do |word2, j|
            next if i == j

            concatenated = word1 + word2

            if concatenated == concatenated.reverse
                pairs << [i, j]
            end
        end
    end

    pairs
end

words = ["code", "edoc", "da", "ad", "abc"]
result = palindrome_pairs(words)
puts result.inspect