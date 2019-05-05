# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: The time complexity is O(n * n) or O(n^2) where n is the size of the matrix input. There is an outer loop and a nested loop that both iterate n times.
# Space complexity: Constant or O(1), no additional space is required besides the variables that track the start, the the length, and the x/y axis. The number of variables is constant no matter the size of the matrix input into the method.

def matrix_check_sum(matrix)
  length = matrix.length
  start = 0

  length.times do
    row_sum = 0
    col_sum = 0
    x = 0
    y = 0

    length.times do
      row_sum += matrix[x][start]
      col_sum += matrix[start][y]
      x += 1
      y += 1
    end

    return false if row_sum != col_sum

    start += 1
  end

  return true
end
