require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/braille_to_english'

class BrailleToEnglishTest < Minitest::Test
    def setup
        text = './braille.txt'
        file = File.open(text, "r")
        incoming_text = file.read
        @english_file = BrailleToEnglish.new(incoming_text)
    end

    def test_it_exists
        assert_instance_of BrailleToEnglish, @english_file
    end

    def test_assign_braille_letter_number_and_special_char
        assert_equal "a", @english_file.letter_translate(["0.", "..", ".."])
        # if you have more time figure out if you could incorporate this to letter translate so you can run whole translate of entire file
        #assert_equal [".0", "0.", ".."], @english_file.assign_num_to_braille["9"]
        assert_equal "?", @english_file.letter_translate(["..", "0.", "00"])
    end

end