# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: O(n) - n is the number of elements in the matrix
# Space complexity: O(n) - n is the number of arrays in the matrix
def matrix_check_sum(matrix)
  row_sums = []
  column_sums = []

  row_total = 0
  column_total = 0

  column_index = 0
  while column_index < matrix[0].length
    row_index = 0
    while row_index < matrix.length
      column_total += matrix[row_index][column_index]
      row_index += 1
    end
    column_sums << column_total
    column_index += 1
  end

  row_index = 0
  while row_index < matrix.length
    column_index = 0
    while column_index < matrix[0].length
      row_total += matrix[row_index][column_index]
      column_index += 1
    end
    row_sums << row_total
    row_index += 1
  end

  if row_sums == column_sums
    return true
  else
    return false
  end
end
