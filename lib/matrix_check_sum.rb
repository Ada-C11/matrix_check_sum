# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: The time complexity is O(n^2) where n is the number of rows = number of columns
# Space complexity: The space complexity is O(1) because only constants are created
def matrix_check_sum(matrix)
  n = matrix.size
  n.times do |i|
    col_sum = matrix[i][0...n].reduce(0, :+)
    row_sum = 0
    n.times do |j|
      row_sum += matrix[j][i]
    end
    if col_sum != row_sum
      return false
    end
  end
  return true
end
