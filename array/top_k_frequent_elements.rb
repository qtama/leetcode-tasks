def top_k_frequent(nums, k)
  count = Array.new(nums.length + 1) {[]}
  nums.tally.each { |k,v| count[v] << k }
  res = []
  nums.length.downto(1).each do |i|
    break if k <= 0

    res.concat count[i].take(k)
    k -= count[i].length
  end
  res

  # or

  # nums.tally.max_by(k) { |_, v| v }.to_h.keys
end

nums = [1,1,1,2,2,3]
k = 2

p top_k_frequent(nums, k)
