class Triangle
  def initialize(num_of_rows)
    @num_of_rows = num_of_rows
  end

  def rows
    rows_array = [] # clean up by using map instead of each, don't have to bother w separate array
    (2..(@num_of_rows + 1)).to_a.each do |num|
      row = Array.new(num - 1)

      counter = 0
      while counter <= row.size - 1
        if counter == 0
          row[counter] = 1
        elsif !!(rows_array[num - 3][counter])
          row[counter] = rows_array[num - 3][counter - 1] + rows_array[num - 3][counter]
        else # outer right
          row[counter] = 1
        end
        counter += 1
      end

      rows_array << row
    end
    rows_array
  end
end
