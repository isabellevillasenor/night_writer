require_relative './dictionary'

class EnglishToBraille
    include Dictionary 
    attr_reader :text
    def initialize(text)
        @text = text
    end

    def letter_translate(text)
        text.chars.flat_map do |letter|
            assign_braille_to_english[letter]
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
        if letter_translate(text).count == 39
            "\n"
        else
            letter_translate(text)
        end
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