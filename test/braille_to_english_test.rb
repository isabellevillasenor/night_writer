require './test/test_helper'

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

    def test_it_has_attributes
        expected = "0.0.00.....00..0....0.....000.00..0.0.....0000.00..0...0.0.......0.000..00.0.0...0..0.0...00...00..0...00.\n00.0.00...0.0..0..0.0.0...000.0....00.000.00...0......000.00..0.0.0..0..0.0.....00....0...0000..0.....0000\n.0..00....00.000....00.0...0.0....00.0.0...00.00.000..000.0...0.000..0...00.000.00...0.0...00.0..0000.00.."
        assert_equal expected, @english_file.text
    end

    def test_set_params
        text = "helloheyhibonjourkonichiwahowareyoudoinggood"
        expected = ["helloheyhibonjourkonichiwahowareyoudoing", "good"]
        assert_equal expected, @english_file.set_params(text)
    end

    def test_assign_braille_letter_number_and_special_char
        assert_equal "a", @english_file.braille_translate(["0.", "..", ".."])
        # if you have more time figure out if you could incorporate this to letter translate so you can run whole translate of entire file
        #assert_equal [".0", "0.", ".."], @english_file.assign_num_to_braille["9"]
        assert_equal "?", @english_file.braille_translate(["..", "0.", "00"])
    end

end