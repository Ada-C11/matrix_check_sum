# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: O(n) where n is the number of items in the matrix
# Space complexity: O(1) constant number of fixed sized variables are used regardless of the size of the martix
def matrix_check_sum(matrix)
  rows = matrix.length
  rows.times do |index|
    row_sum = 0
    col_sum = 0
    rows.times { |row| row_sum += matrix[row][index] }
    rows.times { |column| col_sum += matrix[index][column] }
    return false if row_sum != col_sum
  end
  return true
end
