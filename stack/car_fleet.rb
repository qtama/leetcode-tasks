# @param {Integer} target
# @param {Integer[]} position
# @param {Integer[]} speed
# @return {Integer}
def car_fleet(target, position, speed)
  cars_info = position.zip(speed).sort_by { -_1[0] }
  stack = []
  cars_info.each do |car2|
    unless stack.empty?
      car1 = stack.last
      if car1[1] == car2[1]
        stack.push(car2)
        next
      end
      meeting_point = ((car2[0] - car1[0])*car2[1]) / (car1[1] - car2[1]) + car2[0]
      if meeting_point.positive? && meeting_point <= target
        stack.pop
        stack.push([meeting_point, [car1[1], car2[1]].min])
        next
      end
    end
    stack.push(car2)
  end
  stack.length
end

def car_fleet1(target, position, speed)
  cars = position.zip(speed).sort_by(&:first)

  stack = []
  cars.each do |car|
    position, speed = car
    time = (target - position) / speed.to_f
    while !stack.empty? && stack[-1] <= time
      prev = stack.pop
    end
    stack << time
  end

  stack.length
end

# p car_fleet(12, [10,8,0,5,3], [2,4,1,1,3])
# p car_fleet(10, [3], [3])
# p car_fleet(100, [0,2,4], [4,2,1])
# p car_fleet(10, [6, 8], [3, 2]) # expected 2
# p car_fleet(10, [0,4,2], [2, 1, 3]) # expected 1
p car_fleet(12, [4,0,5,3,1,2], [6,10,9,6,7,2]) # 4