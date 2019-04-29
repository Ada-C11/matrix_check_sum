# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: O(n^2), n stands for the number of elements in each row
# Space complexity: O(1)
def matrix_check_sum(matrix)
  rows = matrix.length
  cols = matrix[0].length

  i = 0
  while i < rows
    j = 0
    sum_rows = 0
    sum_cols = 0
    while j < cols
      sum_rows += matrix[i][j]
      sum_cols += matrix[j][i]
      j += 1
    end
    if sum_rows != sum_cols
      return false
    end
    i += 1
  end

  return true
end
