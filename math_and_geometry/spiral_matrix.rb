def spiral(mx)
  return mx.flatten if mx.size <= 1 || mx.first.size <= 1

  res = []
  res += mx[0][..-2]
  res += mx[..-2].map(&:last)
  res += mx[-1][1..].reverse
  res += mx[1..].map(&:first).reverse

  res + spiral(mx[1..-2].map { |row| row[1..-2]})
end

m1 = [
  [1, 2, 3],
  [8, 9, 4],
  [7, 6, 5]
]
m2 = [
  [1,  2,  3,  4],
  [10, 11, 12, 5],
  [9,  8,  7,  6]
]
m3 = [[23,18,20,26,25],[24,22,3,4,4],[15,22,2,24,29],[18,15,23,28,28]]
m4 = [
  [1,2, 3, 4],
  [5,6, 7, 8],
  [9,10,11,12]
]
m5 = [
  [1,2,3],
  [4,5,6],
  [7,8,9]
]
m6 = [[1,11],[2,12],[3,13],[4,14],[5,15],[6,16],[7,17],[8,18],[9,19],[10,20]]

p spiral(m6)
