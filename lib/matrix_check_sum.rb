# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: O(m * n), where m is the number of rows in the matrix and n is the number of columns
# Space complexity: O(1)
def matrix_check_sum(matrix)
  elements = matrix.length

  i = 0

  until i == elements
    sum1 = 0
    sum2 = 0
    j = 0
    until j == elements
      sum1 += matrix[i][j]
      sum2 += matrix[j][i]

      j += 1
    end
    return false if sum1 != sum2
    i += 1
  end

  return true
end
