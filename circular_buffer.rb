class CircularBuffer
  def initialize(size)
    @buffer = Array.new(size)
  end

  def write(data)
    @buffer.each.with_index do |el, ind|
      if el == nil
        @buffer[ind] = data
        return
      end
    end

    raise CircularBuffer::BufferFullException
  end

  def write!(data)
    return if data == nil
    @buffer.each.with_index do |el, ind|
      if el == nil
        @buffer[ind] = data
        return
      end
    end

    @buffer.shift
    @buffer << data
  end

  def read
    raise BufferEmptyException if @buffer.all?{ |el| el == nil }

    @buffer << nil

    @buffer.shift
  end

  def clear
    @buffer = Array.new(@buffer.size)
  end
end

buffer = CircularBuffer.new(1)
puts buffer

class CircularBuffer::BufferEmptyException < StandardError
  #
end

class CircularBuffer::BufferFullException < StandardError
  #
end