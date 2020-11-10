require_relative './dictionary'

class EnglishToBraille
    include Dictionary 
    attr_reader :text
    def initialize(text)
        @text = text
    end

    def letter_translate(text)
        text.chars.flat_map do |letter|
            assign_braille[letter]
        end
    end

    def group_rows(text)
        words = []
        set_params(text).each_slice(3) do |letter|
            words << letter
        end
      words
    end

    def set_params(text)
        letter_translate(text).each_slice(40).to_a.flatten
    end

    def translate(text)
        words = []
        top = []
        middle = []
        bottom = []
        group_rows(text).map do |letter|
            top << letter[0]
            middle << letter[1]
            bottom << letter[2]        
            words = top + ["\n"] + middle + ["\n"] + bottom
        end
        words.join
    end

  
end