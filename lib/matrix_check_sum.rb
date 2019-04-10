# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: O(n^2) where n is the length of a side of the matrix
# Space complexity: O(1)
def matrix_check_sum(matrix)
  i = 0

  while matrix[i] != nil
    j = 0
    row = 0
    column = 0

    while matrix[j] != nil
      row += matrix[i][j]
      column += matrix[j][i]
      j += 1
    end

    return false if row != column
    i += 1
  end
  return true
end
