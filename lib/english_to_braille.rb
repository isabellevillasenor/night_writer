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
        letter_translate(text).each_slice(3) do |letter|
            words << letter
        end
      words
    end
    
    def set_params(text)
        text.scan(/.{1,40}/)
    end

    def translate(text)
        words = []
        top = []
        middle = []
        bottom = []
        set_params(text).collect do |word|
        group_rows(word).map do |letter|
            top << letter[0]
            middle << letter[1]
            bottom << letter[2]        
            words = top + ["\n"] + middle + ["\n"] + bottom
        end
        words.join
      end
    end

end