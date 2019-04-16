# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: On^2 because the two while loops to calculate the row sum and column sum are nested within the while loop to set the row/column number
# Space complexity: 1
def matrix_check_sum(matrix)
  i = 0
  while i < matrix.length
    row_sum = 0
    column_sum = 0
    j = 0
    while j < matrix[i].length
      row_sum += matrix[i][j]
      j += 1
    end

    j = 0
    while j < matrix.length
      column_sum += matrix[j][i]
      j += 1
    end
    return false if (row_sum != column_sum)
    i += 1
  end
  return true
end
