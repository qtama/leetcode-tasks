# [2,7,11,15], 9
# -7 0
# -2 1
# 2 2
# 6 3


def two_sum(nums, target)
  num2_hash = {}
  nums.each_with_index do |num1, i|
    return [num2_hash[num1], i] if num2_hash.key?(num1) && num2_hash[num1] != i

    num2_hash[target - num1] = i
  end
end

p two_sum([2, 7, 11, 15], 9)
