require_relative './test_helper'

class BrailleTest < Minitest::Test
    def setup
        text = './message.txt'
        file = File.open(text, "r")
        incoming_text = file.read
        @braille_file = BrailleWriter.new(incoming_text)
    end

    def test_it_exists
        assert_instance_of Braille, @braille_file
    end

end