def echo my_string
  my_string
end

def shout my_string
  my_string.upcase
end

def repeat (my_string, num = 2)
  words = []
  num.times do |i|
    words << my_string
  end
   words.join(' ')
end

def start_of_word word, num
  word[0..num - 1]
end

def first_word my_string
  my_string.split.first
end

def titleize my_string
  my_array = my_string.split
  my_array.each do |elmt|
    elmt.capitalize! unless elmt == "and" || elmt == "over" || elmt == "the"
  end
  my_array.first.capitalize!
  my_array.join (' ')
end
