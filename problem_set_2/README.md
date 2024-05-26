# Valid Parentheses checker

A simple script that contains the method `valid_parentheses(s)` that checks if the input string `s` has valid parentheses. The method supports round brackets `()`, curly braces `{}`, and square brackets `[]`. It also handles nested parentheses correctly.

## How it works

The method uses a stack to keep track of the opening parentheses. For each character in the input string:

- If it's an opening parenthesis, it's pushed onto the stack.
- If it's a closing parenthesis, the method checks if the stack is empty or if the top of the stack doesn't match the current parenthesis. If either of these conditions is true, the method returns `false`. Otherwise, it pops the top element from the stack.
- If it's a non-parentheses character, the method returns `false`.

After checking all characters, the method returns `true` if the stack is empty and `false` otherwise. An empty stack means that all opening parentheses have been correctly closed.

## Edge Cases

The method correctly handles several edge cases:

- Empty string: The method returns `true` because an empty string doesn't contain any unbalanced parentheses.
- Single character: The method returns `false` if the string contains a single parenthesis.
- Non-parentheses characters: The method returns `false` if the string contains characters other than parentheses.
- Nested parentheses: The method correctly identifies valid and invalid strings with nested parentheses.
- Unbalanced parentheses: The method returns `false` for strings with unbalanced parentheses.
