class Board
  def self.transform(input)
    #check valid input
    raise ValueError unless input.all? { |str| str.length == input[0].length}

    #raise ValueError unless input.first.match(/\A\+\-{input.first.length - 2}\+/) && input.last.match(/\A\+\-{input.last.length - 2}\+/)
    #output_arr = []

    input.map.with_index do |input_string, arr_index|
      output_str = ''
      input_string.each_char.with_index do |char, str_index|
        if char.match(/[\+\|\*\-]/)
          output_str << char
        elsif char == ' '
          tile_count = 0
          tile_count += 1 if input[arr_index - 1][str_index - 1] == '*'
          tile_count += 1 if input[arr_index - 1][str_index] == '*'
          tile_count += 1 if input[arr_index - 1][str_index + 1] == '*'

          tile_count += 1 if input[arr_index][str_index - 1] == '*'
          tile_count += 1 if input[arr_index][str_index + 1] == '*'

          tile_count += 1 if input[arr_index + 1][str_index - 1] == '*'
          tile_count += 1 if input[arr_index + 1][str_index] == '*'
          tile_count += 1 if input[arr_index + 1][str_index + 1] == '*'
          if tile_count > 0
            output_str << tile_count.to_s
          else
            output_str << ' '
          end
        end
      end
      output_str
    end

    #output_arr
  end
end

