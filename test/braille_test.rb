require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/braille'

class BrailleTest < Minitest::Test
    def setup
        text = './message.txt'
        file = File.open(text, "r")
        incoming_text = file.read
        @braille_file = Braille.new(incoming_text)
    end

    def test_it_exists
        assert_instance_of Braille, @braille_file
    end

    def test_it_has_attributes
        expected = "Hey,\nHow are you today?\nDid you know today is Sunday?"
        assert_equal expected, @braille_file.text
    end

    def test_assign_braille_a
        assert_equal ["0.", "..", ".."], @braille_file.assign_braille["a"]
    end

    def test_translate
        assert_equal ["0.", "..", ".."], @braille_file.translate("a")
    end
end