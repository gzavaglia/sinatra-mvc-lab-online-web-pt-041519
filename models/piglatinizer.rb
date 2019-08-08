class PigLatinizer
  attr_accessor :text
<<<<<<< HEAD
  
  # def initialize(text)
  #   @text = text.downcase
  # end
  
  def translate_word(something)
    char_array = something.scan /\w/
    if %w(a e i o u y A E I O U Y).include?(char_array[0])
      something+"way"
    else 
      until %w(a e i o u y A E I O U Y).include?(char_array[0])
=======

  
  def translate_word(something)
    char_array = something.downcase.scan /\w/
    if %w(a e i o u y).include?(char_array[0])
      something+"way"
    else 
      until %w(a e i o u y).include?(char_array[0])
>>>>>>> 0db6d1a18235bcb4837f60b5a1b9b837aa22d917
        char_array.insert(char_array.count-1, char_array.delete_at(0))
        end
        char_array.join+"ay"
    end
  end
  
  def piglatinize(string)
    delimiters = ['. ', "! ", "? ", " ", ", "]
    word_array = string.split(Regexp.union(delimiters))
    pig_array = []
    word_array.each do |word|
<<<<<<< HEAD
       pig_array << translate_word(word)
=======
       pig_array << translate_word(word.downcase)
>>>>>>> 0db6d1a18235bcb4837f60b5a1b9b837aa22d917
    end
    pig_array.join(" ")
  end
end