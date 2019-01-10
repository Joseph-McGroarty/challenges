class Series
  def initialize(str)
    @digit_string = str
  end

  def slices(size_of_slices)
    raise ArgumentError unless size_of_slices <= @digit_string.length
    # returns a nested arrays of *intergers*
    # the inner arrays have size size_of_slices

    capture_array = []

    @digit_string.each_char.with_index do |char, ind|
      if @digit_string.slice(ind, size_of_slices).length == size_of_slices
        capture_array << @digit_string.slice(ind, size_of_slices)
      end
    end
    capture_array.map! do |substring|
      substring.split('').map! do |single_string|
        single_string.to_i
      end
    end
    capture_array
  end
end

trial = Series.new('1234567')
p trial.slices(8)