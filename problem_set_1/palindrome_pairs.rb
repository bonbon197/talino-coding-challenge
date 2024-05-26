def palindrome_pairs(words)
    return [] if words.empty?
    return "one word array" if words.length == 1

    pairs = []

    words.each_with_index do |word1, i|
        next if word1.empty?
        words.each_with_index do |word2, j|
            next if word2.empty?
            next if i == j

            concatenated = word1.downcase + word2.downcase

            if concatenated == concatenated.reverse
                pairs << [i, j]
            end
        end
    end

    pairs
end

words = ["Code", "edoc", "da", "Ad", "abc"]
result = palindrome_pairs(words)
puts result.inspect

# should special characters and unicode characters be included in testing?