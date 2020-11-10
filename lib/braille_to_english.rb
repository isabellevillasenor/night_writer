require_relative './dictionary'

class BrailleToEnglish
    include Dictionary

    attr_reader :text
    def initialize(text)
        @text = text
    end
      
    def braille_translate(text)
       assign_english_to_braille.find_all do |braille, value|
         if braille == text
            assign_english_to_braille.values_at([braille])
         end
        end.flatten.pop
    end
    
    def group_rows(text)
        words = []
        braille_translate(text).each_slice(3) do |letter|
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