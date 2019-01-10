class PhoneNumber
  def initialize(number_str)
    @number_entry = number_str
  end

  def clean_number # removes space, dash and parenthises
    arr = @number_entry.split(/[ \-\(\)\.]/)
    clean_str = ''
    counter = 0

    while counter < arr.size
      clean_str += arr[counter]
      counter += 1
    end
    clean_str
  end

  def number
    return '0000000000' unless clean_number.match(/\A\d{10}\z/) || clean_number.match(/\A1\d{10}\z/)
    if clean_number.match(/\A\d{10}\z/)
      clean_number
    elsif clean_number.match(/\A1\d{10}\z/)
      clean_number[1..10]
    end
  end

  def to_s
    "(#{number[0..2]}) #{number[3..5]}-#{number[6..9]}"
  end

  def area_code
    number[0..2]
  end
end

trial = PhoneNumber.new('412456-7890')
puts trial