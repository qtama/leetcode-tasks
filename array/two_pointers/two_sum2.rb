# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  left, right = 0, 1
  while right < numbers.length
    sum = numbers[left] + numbers[right]
    return [left+1, right+1] if sum == target

    if sum < target
      left += 1
      right += 1
    else
      left -= 1
    end
  end
end
