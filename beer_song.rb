class BeerSong
  def verse(num)
    if 3 <= num && num <= 99
      "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" +
      "Take one down and pass it around, #{num - 1} bottles of beer on the wall.\n"
    elsif num == 2
      "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" +
      "Take one down and pass it around, #{num - 1} bottle of beer on the wall.\n"
    elsif num == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" +
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif num == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def verses(start, last)
    concatenated_verses = ''
    counter = start

    while counter >= last
      concatenated_verses += verse(counter)
      concatenated_verses += "\n" unless counter == last
      counter -= 1
    end
    concatenated_verses
  end

  def lyrics
    verses(99, 0)
  end
end

#puts BeerSong.new.verses(99, 97)