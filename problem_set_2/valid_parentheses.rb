def valid_parentheses(s)
    stack = []
    brackets = {
        ')' => '(',
        '}' => '{',
        ']' => '['
    }

    s.each_char do |char|
        if brackets.values.include?(char)
            stack.push(char)
        elsif brackets.keys.include?(char)
            return false if stack.empty? || stack.pop != brackets[char]
        else
            return false
        end
    end

    stack.empty?
end


puts valid_parentheses("()")  # true
puts valid_parentheses("()[]{}")  # true
puts valid_parentheses("(]")  # false
puts valid_parentheses("([)]")  # false
puts valid_parentheses("{[]}")  # true