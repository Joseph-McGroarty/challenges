class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    #words_arr = @phrase.downcase.split(/[^a-z0-9']/).select {|item| item != ''}
    words_arr = @phrase.downcase.scan(/[a-z0-9]+'[a-z0-9]+|[a-z0-9]+/).select {|item| item != ''}
    collection_hash = Hash.new(0)

    words_arr.each do |word|
      #if collection_hash.has_key?(word)
        collection_hash[word] += 1
      #else
        #collection_hash[word] = 1
      #end
    end

    collection_hash
  end
end

