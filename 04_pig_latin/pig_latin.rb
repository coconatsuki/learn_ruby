def translate my_string
  my_array = my_string.split
  my_array.map! do |e|
    transformation(e)
  end
  my_array.join(' ')
end

def transformation word
  vowels = ["a", "e", "i", "o", "u", "y"]
  char0 = word[0]
  char1 = word[1]
  char2 = word[2]
  if vowels.include?(char0)
    "#{word}ay"
  elsif char0 == "q" && char1 == "u"
    "#{word.delete(char0).delete(char1)}#{char0 + char1}ay"
  elsif char0 == "s" && char1 == "q" && char2 == "u"
    "#{word.delete(char0).delete(char1).delete(char2)}#{char0 + char1 + char2}ay"
  elsif !vowels.include?(char0) && !vowels.include?(char1) && !vowels.include?(char2)
    "#{word.delete(char0).delete(char1).delete(char2)}#{char0 + char1 + char2}ay"
  elsif !vowels.include?(char0) && !vowels.include?(char1)
    "#{word.delete(char0).delete(char1)}#{char0 + char1}ay"
  elsif !vowels.include?(char0)
    "#{word.delete(char0)}#{char0}ay"
  end
end
