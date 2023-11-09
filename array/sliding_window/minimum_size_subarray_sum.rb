# @param {Integer} target
# @param {Integer[]} nums
# @return {Integer}
# def min_sub_array_len(target, nums)
#   return 0 if nums.sum < target

#   min_length = Float::INFINITY
#   sum = 0

#   nums.each_with_object([]) do |num, sub_arr|
#     sub_arr << num
#     sum += num

#     if sum >= target
#       sum -= sub_arr.shift while sum >= target
#       min_length = [min_length, sub_arr.length + 1].min
#     end

#     sub_arr
#   end

#   min_length
# end

def min_sub_array_len(target, nums)
  left = 0

  min_length = Float::INFINITY
  sum = 0

  nums.each_with_index do |num, right|
    sum += num

    while sum >= target
      min_length = [min_length, right - left + 1].min
      sum -= nums[left]
      left += 1
    end
  end

  min_length == Float::INFINITY ? 0 : min_length
end
