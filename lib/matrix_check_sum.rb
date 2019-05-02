# Time complexity: O(n) where n is the number of items rows/cols in the matrix
# Space complexity: O(1)
def matrix_check_sum(matrix)
  matrix.length.times do |row|
    col_sum = 0
    row_sum = 0
    matrix.length.times do |col|
        col_sum += matrix[row][col]
        row_sum += matrix[col][row]
    end
    return false if col_sum != row_sum
  end
return true
end

matrix_check_sum(matrix)