def longest_increasing_subsequence_length(nums)
    return 0 if nums.empty?

    dp = Array.new(nums.length, 1)

    (1...nums.length).each do |i|
        (0...i).each do |j|
            dp[i] = [dp[i], dp[j] + 1].max if nums[i] > nums[j]
        end
    end

    dp.max
end


nums = [10, 9, 2, 5, 3, 7, 101, 18]
puts longest_increasing_subsequence_length(nums)

# thanks youtube for giving me the idea on how to solve this
# https://www.youtube.com/watch?v=1V17M1M1XqQ