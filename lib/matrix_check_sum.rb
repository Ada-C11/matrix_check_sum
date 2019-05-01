# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: O(n) where n is the number of rows in the matrix
# Space complexity: O(1) not storing data
def matrix_check_sum(matrix)
  matrix.length.times do |i|
    return false if sum_row(i, matrix) != sum_column(i, matrix)
  end
  return true
end

def sum_row(row, matrix)
  return matrix[row].sum
end

def sum_column(col, matrix)
  sum = 0
  matrix.each do |row|
    sum += row[col]
  end
  return sum
end
