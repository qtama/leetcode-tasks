# @param {Integer[][]} pairs
# @return {Integer}
def find_longest_chain(pairs)
  return 1 if pairs.length == 1

  pairs.sort_by! { _1[0] }

  chain_length, max_chain_length = 1, 1
  last_pair = pairs.first
  pairs[1..].each do |pair|
    if pair[0] > last_pair[1]
      chain_length += 1
      max_chain_length = [chain_length, max_chain_length].max
    else
      chain_length = 0
    end
    last_pair = pair
  end
  max_chain_length
end

p find_longest_chain([[1,2],[7,8],[4,5]])
p find_longest_chain([[1,2],[2,3],[3,4]])