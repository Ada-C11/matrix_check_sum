# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: O(n^2), where n is the number of rows (since # of columns and rows are assumed to be the same)
# Space complexity: O(n), where n is the number of rows
def matrix_check_sum(matrix)
  length = matrix.length
  row_sum = 0
  col_sum = 0
  hash = {}

  length.times do |x|
    length.times do |y|
      row_sum += matrix[x][y]
    end

    hash[x] = row_sum
  end

  length.times do |y|
    length.times do |x|
      col_sum += matrix[x][y]
    end

    hash[y] -= col_sum
    return false if hash[y] != 0
  end

  return true
end
