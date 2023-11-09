# def length_of_longest_substring(s)
#   return s.size if s.size < 2

#   left = 0
#   max_length = 0
#   window_chars = {}

#   s.chars.each_with_index do |char, right|
#     char_pos = window_chars[char]
#     left = char_pos + 1 if char_pos && char_pos >= left
#     window_chars[char] = right
#     max_length = [max_length, right - left + 1].max
#   end

#   max_length
# end

def length_of_longest_substring(s)
  s_size = s.size
  return s_size if s_size < 2

  left = 0
  right = 0
  max_length = 0
  window_chars = {}

  while right < s_size
    char_pos = window_chars[s[right]]
    if char_pos && char_pos >= left
      left = char_pos + 1
    end
    window_chars[s[right]] = right
    right += 1
    max_length = [max_length, right - left].max
  end

  [max_length, right - left].max
end

s1 = 'au'
s2 = 'abcabcbb'
s3 = 'bbbbb'
s4 = 'pwwkew'
s5 = 'dvdf'
s6 = 'abba'
p length_of_longest_substring(s1)
p length_of_longest_substring(s2)
p length_of_longest_substring(s3)
p length_of_longest_substring(s4)
p length_of_longest_substring(s5)
p length_of_longest_substring(s6)
