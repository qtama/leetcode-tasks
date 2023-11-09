PARENTHESES = {'(' => ')', '[' => ']', '{' => '}'}.freeze

def is_valid(s)
  return false if s.length.odd?

  s.chars.each_with_object([]) do |parenthesis, stack|
    return false if PARENTHESES.key(parenthesis) && (stack.last != PARENTHESES.key(parenthesis))

    parenthesis == PARENTHESES[stack.last] ? stack.pop : stack << parenthesis
  end.empty?
end
