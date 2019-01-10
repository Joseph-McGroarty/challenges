class Sieve
  def initialize(num)
    @num = num
  end

  def primes
    hash_of_nums = {}
    arr = (2..@num).to_a

    arr.each do |number|
      hash_of_nums[number] = nil
    end

    arr.each do |num|
      if hash_of_nums[num] == nil
        counter = 2
        while num*counter <= @num
          hash_of_nums[num*counter] = false
          counter += 1
        end
        hash_of_nums[num] = true
      end
    end
    primes_hash = hash_of_nums.select do |k, v|
      v == true
    end
    primes_hash.keys
  end
end

trial = Sieve.new(10)
p trial.primes