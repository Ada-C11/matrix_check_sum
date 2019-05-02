
# Time complexity: O(n * m) where n represents the number of rows and m represents the number of columns
# Space complexity: O(1) constant
def matrix_check_sum(matrix)
  rows = matrix.length
  columns = matrix[0].length
  col_sum = 0
  sum_check = false
  i = 0
  columns.times do
    row_sum = matrix[i].inject(0) { |sum, x| sum + x }
    j = 0
    rows.times do
      col_sum += matrix[j][i]
      j += 1
    end
    if col_sum == row_sum
      sum_check = true
    else
      return false
    end
    col_sum = 0
    i += 1
  end
  return true
end
