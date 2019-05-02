# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: O(n*k), where n is the size of the external array that represents
# the rows and k is the size of an individual array that represents the columns
# Space complexity: O(1), because the additional space required is two variables to store
# the sums for rows and columns and that doesn't depend on the size of the matrix
def matrix_check_sum(matrix)
  rows = matrix.length
  columns = matrix[0].length

  rows.times do |r|
    row_sum = 0
    column_sum = 0
    columns.times do |c|
      row_sum += matrix[r][c]
      column_sum += matrix[c][r]
    end
    return row_sum == column_sum
  end
end

# matrix = [[1, 2], [2, 1]]
# puts matrix_check_sum(matrix)
