# Checks that for the given matrix, where number of rows are equal to number of columns
# whether the sum of each row matches the sum of corresponding column i.e. sum
# of numbers in row i is the same as the sum of numbers in column i for i = 0 to row.length-1
# If this is the case, return true. Otherwise, return false.

# Time complexity: O(n x m) where n is the length of the matrix and m is the length of the longest array in the matrix.
# In the first loop, the outer loop will run n times and the inner loop will run m times. The second loop will run n times.
# Space complexity: O(n) where n is the length of the matrix because the number of key/value pairs will be equal to the number
# of indices in the matrix.

def matrix_check_sum(matrix)
  sums = {}

  matrix.each do |arr|
    arr.each_with_index do |num, j|
      if !sums.has_key?(j)
        sums[j] = arr[j]
      else
        sums[j] += arr[j]
      end
    end
  end

  matrix.each_with_index do |arr, i|
    if arr.sum != sums[i]
      return false
    end
  end

  return true
end
