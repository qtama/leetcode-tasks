# @param {Integer[]} nums
# @return {Integer}
require 'set'
def longest_consecutive(nums)
  s = Set.new(nums) # O(n)

  max_count = 0
  s.each do |n| # O(n)
    next if s.include? n - 1

    count = 1
    count += 1 while s.include? n + count # ~O(n)

    max_count = [max_count, count].max
  end
  max_count
end


nums = [0,3,7,2,5,8,4,6,0,1,] # -> 9
p longest_consecutive(nums)