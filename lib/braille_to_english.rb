require_relative './dictionary'

class BrailleToEnglish
    include Dictionary
    attr_reader :text
    def initialize (text)
        @text = text
    end



end