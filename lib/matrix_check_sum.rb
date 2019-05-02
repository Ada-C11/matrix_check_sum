
# Time complexity: O(n^2) where n is the 
# Space complexity: ?
def matrix_check_sum(matrix)
  i = 0
  
  until i == matrix.length
    row_sum = 0
    
    matrix[i].each do |num|
      row_sum += num
    end
    
    column_sum = 0
      matrix.each do |row|
        column_sum += row[i]
      end
    return false if row_sum != column_sum
    i += 1
  end
    return true
end
