# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  h = {}
  strs.each do |s|
    key = s.chars.tally
    h.key? key ? h[key].push(s) : h[key] = [s]
  end
  h.values
end

# Input: strs = ["eat","tea","tan","ate","nat","bat"]
# Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

p group_anagrams(["eat","tea","tan","ate","nat","bat"])
