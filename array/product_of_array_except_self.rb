def prod(nums)
  res = Array.new(nums.length) {1}

  (0..nums.length - 1).inject(1) do |pr, i|
    res[i] = pr
    pr * nums[i]
  end

  (nums.length - 1).downto(0).inject(1) do |pf, i|
    res[i] *= pf
    pf * nums[i]
  end

  res
end

p prod([1,2,3,4])
