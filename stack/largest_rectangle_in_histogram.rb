# @param {Integer[]} heights
# @return {Integer}
def largest_rectangle_area(heights)
  stack = []
  max_space = 0

  heights.each_with_index do |height, i|
    next if !stack.empty? && height == stack.last[1]

    index = i
    while !stack.empty? && stack.last[1] > height
      index = stack.last[0]
      max_space = [max_space, stack.last[1]*(i - index)].max
      stack.pop
    end

    stack << [index, height]
  end
  
  end_index = heights.length
  until stack.empty?
    max_space = [max_space, stack.last[1]*(end_index - stack.last[0])].max
    stack.pop
  end

  max_space
end

p largest_rectangle_area([2, 1, 5, 6, 2, 3])
