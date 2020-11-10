require './test/test_helper'

class EnglishToBrailleTest < Minitest::Test
    def setup
        text = './message.txt'
        file = File.open(text, "r")
        incoming_text = file.read
        @braille_file = EnglishToBraille.new(incoming_text)
    end

    def test_it_exists
        assert_instance_of EnglishToBraille, @braille_file
    end

    def test_it_has_attributes
        expected = "Hey,\nHow are you today?\nDid you know today is Tuesday?"
        assert_equal expected, @braille_file.text
    end

    def test_assign_braille_letter_number_and_special_char
        assert_equal ["0.", "..", ".."], @braille_file.assign_braille_to_english["a"]
        assert_equal [".0", "0.", ".."], @braille_file.assign_braille_to_english["9"]
        assert_equal ["..", "0.", "00"], @braille_file.assign_braille_to_english["?"]
    end

    def test_letter_translate
        assert_equal ["0.", "..", ".."], @braille_file.letter_translate("a")
        assert_equal [".0", "0.", ".."], @braille_file.letter_translate("9")
        assert_equal ["..", "0.", "00"], @braille_file.letter_translate("?")
        assert_equal ["0.", "..", ".0"], @braille_file.letter_translate("A")
    end

    def test_group_rows
        expected = [["0.", "00", ".."], [".0", "0.", ".."]]
        assert_equal expected, @braille_file.group_rows("hi")
    end
    
    # def test_set_params
    #     expected = [
    #         "0.0.00.....00..0....0.....000.00..0.0.....0000.00..0...0.0.......0.000..00.0.0...0..0.0...00...00..0...00.\n
    #         00.0.00...0.0..0..0.0.0...000.0....00.000.00...0......000.00..0.0.0..0..0.0.....00....0...0000..0.....0000\n
    #         .0..00....00.000....00.0...0.0....00.0.0...00.00.000..000.0...0.000..0...00.000.00...0.0...00.0..0000.00..\n"
    #     ]

    # end

    def test_translate_word
        expected = "0..0" + "\n" +  "000." + "\n" + "...."
        assert_equal expected, @braille_file.translate("hi")
    end

end