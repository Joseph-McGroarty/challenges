class Octal
  def initialize(decimal_str)
    @decimal_str = decimal_str
  end

  def to_decimal
    # returns an integer in decimal form

    # check valid imput
    individual_characters_arr = @decimal_str.split('')
    return 0 unless individual_characters_arr.all? { |char| char.match(/\d/) }
    return 0 unless individual_characters_arr.all? { |char| (0..7).to_a.include?(char.to_i) }

    #do conversion
    total = 0
    counter = -1
    exponent = 0

    while counter >= 0 - @decimal_str.length do
      total += @decimal_str[counter].to_i * (8 ** exponent)
      counter -= 1
      exponent += 1
    end

    total
  end
end

trial = Octal.new('130')
puts trial.to_decimal