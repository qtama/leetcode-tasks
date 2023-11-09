# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.

#mine

# def merge(nums1, m, nums2, n)
#   return if n.zero?

#   stack = []

#   stack << (nums1.first <= nums2.first ? nums1.shift : nums2.shift) until nums1.size == n || nums2.empty?
#   nums1.pop(n)
#   nums1.unshift *stack
#   nums1.push *nums2
# end

# not mine

def merge(nums1, m, nums2, n)
  return if n.zero?

  i = nums1.size - 1
  n -= 1
  m -= 1

  while i >= 0 && n >= 0
    if m >= 0 && nums1[m] > nums2[n]
      nums1[i] = nums1[m]
      m -= 1
    else
      nums1[i] = nums2[n]
      n -= 1
    end
    i -= 1
  end
end

nums1 = [1, 2, 10, 0, 0, 0]
merge(nums1, 3,
        [2, 5, 6], 3)
p nums1

nums1 = [1, 2, 3, 0, 0, 0]
merge(nums1, 3,
        [2, 5, 6], 3)
p nums1

nums1 = [4,5,6,0,0,0]
merge(nums1, 3,
        [1,2,3], 3)
p nums1

nums1 = [1, 2, 10, 12, 0, 0, 0]
merge(nums1, 4,
        [2, 5, 6], 3)
p nums1
