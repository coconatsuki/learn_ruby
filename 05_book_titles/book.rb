class Book
  attr_reader :title

  def title=(value)
      @title = all_cap(value)
  end

  def all_cap(value)
    sentence = value.split
    sentence.map do |word|
      word.capitalize!
    end
    look_for_small_words(sentence)
    sentence.join(' ')
  end

  def look_for_small_words sentence
    words_list = ["And", "In", "The", "Of", "A", "An"]
    sentence.each do |word|
      if words_list.include?(word)
        word.downcase!
      end
    end
    sentence.first.capitalize!
  end
end
