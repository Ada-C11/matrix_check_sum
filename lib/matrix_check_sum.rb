# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: O(n ^ 2) - Quadratic, where n is the size of the input.  There are two separate loops nested inside the main one.
# Space complexity: O(1) - Constant.  There will always be the same amount of variables needed, regardless of imput size.
def matrix_check_sum(matrix)

  # incrementer for rows
  i = 0
  # incrementer for summing rows
  j = 0
  # incrementer for summing columns
  k = 0

  row_sum = 0
  column_sum = 0

  while i < matrix.length
    while j < matrix[i].length
      row_sum += matrix[i][j]
      j += 1
    end

    while k < matrix.length
      column_sum += matrix[k][i]
      k += 1
    end

    return false if row_sum != column_sum

    column_sum = 0
    row_sum = 0

    k = 0
    j = 0
    i += 1
  end

  return true
end
