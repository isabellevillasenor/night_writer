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

    def test_assign_braille_letter_number_and_special_char
        assert_equal ["0.", "..", ".."], @braille_file.assign_braille["a"]
        assert_equal [".0", "0.", ".."], @braille_file.assign_braille["9"]
        assert_equal ["..", "0.", "00"], @braille_file.assign_braille["?"]
    end

    def test_translate
        assert_equal ["0.", "..", ".."], @braille_file.translate("a")
        assert_equal [".0", "0.", ".."], @braille_file.translate("9")
        assert_equal ["..", "0.", "00"], @braille_file.translate("?")
    end

    # def test_word_render
    #     expected = [""]
    #     assert_equal expected, 
    # end

    def test_translate_word
        expected = "0." + "\n" +  "00" + "\n" + ".."
        assert_equal expected, @braille_file.translate_words("hi")
    end
end