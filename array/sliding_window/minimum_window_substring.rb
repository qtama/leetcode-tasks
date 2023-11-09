# sliding window
# https://leetcode.com/problems/minimum-window-substring/solutions/26808/here-is-a-10-line-template-that-can-solve-most-substring-problems/

# @param {String} s
# @param {String} t
# @return {String}
def min_window(s, t)
  return '' if t.size > s.size

  t_char_count_hash = t.chars.tally
  t_char_count_hash.default = 0
  w_start, w_end, head = 0, 0, 0
  min_len = Float::INFINITY
  counter = t.size
  s_size = s.size

  while w_end < s_size
    counter -= 1 if t_char_count_hash[s[w_end]] > 0
    t_char_count_hash[s[w_end]] -= 1 # count for char from t would be >= 0, other's would be -1

    while counter == 0  # while current window has all chars from t (and while it's not minimal)
      if w_end - w_start + 1 < min_len    # if current window is valid and it's length is less than previous minimum window length (of infinity)
        min_len = w_end - w_start + 1   # compute new minimum length
        head = w_start
      end
      t_char_count_hash[s[w_start]] += 1
      counter += 1 if t_char_count_hash[s[w_start]] > 0 # current window is minimal (its start is a char from t)
      w_start += 1
    end
    w_end += 1
  end

  min_len == Float::INFINITY ? '' : s.slice(head, min_len)
end