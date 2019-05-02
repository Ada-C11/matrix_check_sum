# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: O(n^2) where n is the length of matrix
# Space complexity: O(n) where n is the length of matrix
def matrix_check_sum(matrix)
  rows = matrix.length
  columns = matrix[0].length
  
  sum_rows = []
  matrix.each do |row|
    sum_rows.push(row.sum)
  end

  sum_columns = []
  columns.times do |i|
    sum = 0
    rows.times do |j|
      sum = sum + matrix[j][i]
    end
    sum_columns.push(sum)
  end
 
  rows.times do |i|
    columns.times do |j|
      if sum_rows[i] != sum_columns[j]
        return false
      end
    end
  end

  return true
end
