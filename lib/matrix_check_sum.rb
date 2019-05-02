# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: O(n^2), n^2 are the total number of elements in the matrix
# Space complexity: O(n), n is the size of the columns_sum array or the rows_sum_array
def matrix_check_sum(matrix)

  rows = matrix.length
  columns = rows

  #find sum of each column push them into the columns_sum array
  columns_sum = []
  columns.times do |j|
    each_column_sum = 0
    rows.times do |i|
      each_column_sum += matrix[i][j]
    end
    columns_sum << each_column_sum
  end
  #find sum of each row and push them into the rows_sum array
  rows_sum = []

  matrix.each do |row|
    rows_sum << row.sum
  end

  if rows_sum == columns_sum
    return true
  else
    return false
  end

end
