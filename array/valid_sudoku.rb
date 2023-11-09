def is_valid_sudoku(board)
  9.times do |i|
    return false unless valid_entity?(board[i])
    return false unless valid_entity?(board.map { |row| row[i] })

    j = i - i % 3
    k = 3 * (i % 3)
    box = board[j..j+2].flat_map { |row| row[k..k+2] }
    p box
    return false unless valid_entity?(box)
  end
  true
end

def valid_entity?(entity)
  hash = {}
  entity.each do |cell|
    next if cell == '.'
    return false if hash.key? cell

    hash[cell] = true
  end
  true
end


board = 
[["5","3",".",".","7",".",".",".","."],
["6",".",".","1","9","5",".",".","."],
[".","9","8",".",".",".",".","6","."],
["8",".",".",".","6",".",".",".","3"],
["4",".",".","8",".","3",".",".","1"],
["7",".",".",".","2",".",".",".","6"],
[".","6",".",".",".",".","2","8","."],
[".",".",".","4","1","9",".",".","5"],
[".",".",".",".","8",".",".","7","9"]]

p is_valid_sudoku(board)