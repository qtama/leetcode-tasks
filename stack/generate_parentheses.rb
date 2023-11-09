# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  result = []
  backtrack("", 0, 0, n, result)
  result
end

def backtrack(current, open_count, close_count, n, result)
  if current.length == 2 * n
      result << current
      return
  end

  if open_count < n
      backtrack(current + "(", open_count + 1, close_count, n, result)
  end

  if close_count < open_count
      backtrack(current + ")", open_count, close_count + 1, n, result)
  end
end
