def palindrome_pairs(words)
    return "empty array" if words.empty?
    return "one word array" if words.length == 1

    word_map = {}
    words.each_with_index { |word, i| word_map[word.downcase] = i }

    pairs = []

    words.each_with_index do |word, i|
        m = word.length
        word = word.downcase

        (0..m).each do |j|
            prefix = word[0...j]
            suffix = word[j..-1]

            if prefix == prefix.reverse && word_map.include?(suffix.reverse) && word_map[suffix.reverse] != i
                pairs << [word_map[suffix.reverse], i]
            end

            if j != m && suffix == suffix.reverse && word_map.include?(prefix.reverse) && word_map[prefix.reverse] != i
                pairs << [i, word_map[prefix.reverse]]
            end
        end
    end

    pairs
end

words = ["Code", "edoc", "da", "Ad", "abc"]
result = palindrome_pairs(words)
puts result.inspect

# should special characters and unicode characters be included in testing?