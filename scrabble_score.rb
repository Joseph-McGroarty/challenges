class Scrabble
  def initialize(word)
    @word = word
  end

  def score
    score = 0

    letter_arr = @word.to_s.split('') # may need to call to_s to pass nil test

    letter_arr.each do |letter|
      if letter.match(/[aeioulnrst]/i)
        score += 1
      elsif letter.match(/[dg]/i)
        score += 2
      elsif letter.match(/[bcmp]/i)
        score += 3
      elsif letter.match(/[fhvwy]/i)
        score += 4
      elsif letter.match(/[k]/i)
        score += 5
      elsif letter.match(/[jx]/i)
        score += 8
      elsif letter.match(/[qz]/i)
        score += 10
      end
    end
    score
  end

  def self.score(word)
    score = 0

    letter_arr = word.to_s.split('') # may need to call to_s to pass nil test

    letter_arr.each do |letter|
      if letter.match(/[aeioulnrst]/i)
        score += 1
      elsif letter.match(/[dg]/i)
        score += 2
      elsif letter.match(/[bcmp]/i)
        score += 3
      elsif letter.match(/[fhvwy]/i)
        score += 4
      elsif letter.match(/[k]/i)
        score += 5
      elsif letter.match(/[jx]/i)
        score += 8
      elsif letter.match(/[qz]/i)
        score += 10
      end
    end
    score
  end
end