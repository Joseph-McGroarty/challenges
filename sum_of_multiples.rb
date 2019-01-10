class SumOfMultiples
  def initialize(a, b, c = nil)
    @num_a = a
    @num_b = b
    @num_c = c
  end

  def to(num)
    (0..num - 1).to_a.select { |el| el % @num_a == 0 || el % @num_b == 0 || (@num_c && el % @num_c == 0) }.sum
  end

  def self.to(num)
    (0..num - 1).to_a.select { |el| el % 3 == 0 || el % 5 == 0 }.sum
  end
end

p SumOfMultiples.to(20)