# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: O(n^2), where n is the number of rows/columns
# Space complexity: O(n), where n is the number of rows/columns ?
def matrix_check_sum(matrix)
  num_of_rows = matrix.length

  sum_rows = []
  num_of_rows.times do |i|
    sum = 0
    num_of_rows.times do |j|
      sum += matrix[i][j]
    end
    sum_rows << sum
  end

  sum_cols = []
  num_of_rows.times do |i|
    sum = 0
    num_of_rows.times do |j|
      sum += matrix[j][i]
    end
    sum_cols << sum
  end

  if sum_rows == sum_cols
    return true
  else
    return false
  end
end
