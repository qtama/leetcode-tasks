# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.

# not mine
def sort_colors(nums)
  i=0
  j=nums.length-1
  k=0
  while (k <= j)
    if nums[k]==0
      nums[k],nums[i]=nums[i],nums[k]
      i+=1
      k+=1
    elsif nums[k]==2
      nums[k],nums[j]=nums[j],nums[k]
      j-=1
    else
      k+=1
    end
  end
end

# mine
# def sort_colors(nums)
#   nums_size = nums.size

#   return if nums_size == 1

#   nums_count = nums.tally
#   num_to_insert = 0

#   (0...nums_size).each do |i|
#     num_to_insert += 1 while nums_count[num_to_insert].to_i == 0

#     nums[i] = num_to_insert
#     nums_count[num_to_insert] -= 1
#   end
# end
