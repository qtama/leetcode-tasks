# def count_substrings(s, left = 0, right = s.length - 1, palindromes = {})
#   return if left > right

#   p [s[left..right], palindromes]

#   count_substrings(s, left, right - 1, palindromes)
#   count_substrings(s, left + 1, right, palindromes)

#   palindrome?(s, left, right, palindromes)

#   palindromes.keys.count
# end


# def palindrome?(s, left, right)
#   while left < right
#     return false if s[left] != s[right]

#     left += 1
#     right -= 1
#   end

#   true
# end
#############################
# def count_substrings(s, palindromes = {})
#   (0...s.length).each do |m|
#     left = 0
#     while left + m < s.length
#       palindrome?(s, left, left + m, palindromes)
#       left += 1
#     end
#   end

#   palindromes.keys.count
# end

# def palindrome?(s, left, right, palindromes)
#   return if palindromes[[left, right]]
#   return palindromes[[left, right]] = s[left..right] if right - left + 1 <= 2 && s[left] == s[right]

#   palindromes[[left, right]] = s[left..right] if s[left] == s[right] && palindromes[[left + 1, right - 1]]
# end
#############################


def count_substrings(s)
  res = 0

  s.chars.each_index do |i|
    left, right = i, i

    while left >= 0 && right < s.length && s[left] == s[right]
      res += 1
      left -= 1
      right += 1
    end

    left, right = i, i + 1
    while left >= 0 && right < s.length && s[left] == s[right]
      res += 1
      left -= 1
      right += 1
    end
  end

  res
end



p count_substrings('abc')
p count_substrings('aaa')
