# Problem Set X: Valid Parentheses

## Problem Description
Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is
valid. An input string is valid if:

1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.

## Solution Overview
The method uses a stack to keep track of the opening parentheses. For each character in the input string:

- If it's an opening parenthesis, it's pushed onto the stack.
- If it's a closing parenthesis, the method checks if the stack is empty or if the top of the stack doesn't match the current parenthesis. If either of these conditions is true, the method returns `false`. Otherwise, it pops the top element from the stack.
- If it's a non-parentheses character, the method returns `false`.

After checking all characters, the method returns `true` if the stack is empty and `false` otherwise. An empty stack means that all opening parentheses have been correctly closed.

## Instructions to Run the Code
Make sure you're within the directory of the problem set and run
```ruby
ruby problem_set_2.rb
```