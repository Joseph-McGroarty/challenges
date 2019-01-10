class Bst
  attr_reader :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def insert(new_data)
    if new_data <= self.data
      if @left
        @left.insert(new_data)
      else
        @left = Bst.new(new_data)
      end
    elsif new_data > self.data
      if @right
        @right.insert(new_data)
      else
        @right = Bst.new(new_data)
      end
    end
  end

  def each(&block)
    return to_enum(:each) unless block_given?

    @left.each(&block) if @left
    block.call(self.data)
    @right.each(&block) if @right
  end
end