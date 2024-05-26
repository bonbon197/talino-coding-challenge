# Problem Set 3: Longest Increasing Subsequence

## Problem Description
Given an unsorted array of integers, find the length of the longest increasing subsequence.

## Solution Overview
If the input array `nums` is empty, the function returns 0 because there are no elements, hence no subsequences.

It initializes a dynamic programming (DP) array `dp` of the same length as `nums`, with all elements set to 1. This is because a single number is considered an increasing subsequence of length 1.

It then iterates over the `nums` array from the second element to the end (indices 1 to `nums.length - 1`). For each element at index `i`, it checks all previous elements (indices 0 to `i - 1`). If `nums[i]` is greater than `nums[j]`, it means we can form an increasing subsequence ending at `i` that includes the subsequence ending at `j`. In this case, it updates `dp[i]` to be the maximum of its current value and `dp[j] + 1`.

After filling the `dp` array, it returns the maximum value in `dp`, which represents the length of the longest increasing subsequence in `nums`.

## Instructions to Run the Code
Make sure you're within the directory of the problem set and run
```ruby
ruby problem_set_3.rb
```