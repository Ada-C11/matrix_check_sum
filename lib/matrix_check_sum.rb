# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: O(n^2) - n * m, where n is the number of rows and m is the number of columns
# Space complexity: O(1) - constant
def matrix_check_sum(matrix)
  rows = matrix.length
  cols = matrix[0].length

  rows.times do |row|
    row_sum = 0
    col_sum = 0
    cols.times do |col|
      row_sum += matrix[row][col]
      col_sum += matrix[col][row]
    end
    return false if row_sum != col_sum
  end
  return true
end
