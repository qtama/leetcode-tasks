require 'debug'

# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  res = []
  nums_length = nums.length
  nums.sort!
  nums.each_with_index do |num, i|
    # debugger
    next if num == nums[i - 1] && !i.zero?
    break if num.positive?

    left, right = i + 1, nums_length - 1

    while left < right
      case 0 <=> num + nums[left] + nums[right]
      when -1
        right -= 1
        right -= 1 while nums[right] == nums[right+1]
      when 0
        res << [num, nums[left], nums[right]]
        left += 1
        left += 1 while nums[left] == nums[left - 1]
        right -= 1
        right -= 1 while nums[right] == nums[right+1]
      when 1
        left += 1
        left += 1 while nums[left] == nums[left - 1]
      end
    end
  end
  res
end

nums = [-1,0,1,2,-1,-4]
# p three_sum(nums)
p three_sum([-2,0,0,2,2])
# [[-1,-1,2],[-1,0,1]]