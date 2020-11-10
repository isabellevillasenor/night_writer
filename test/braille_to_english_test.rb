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

    def test_set_params
        text = "helloheyhibonjourkonichiwahowareyoudoinggood"
        expected = ["helloheyhibonjourkonichiwahowareyoudoing", "good"]
        assert_equal expected, @english_file.set_params(text)
    end
    
    def test_group_rows
        text = "0..0\n000.\n...."
        expected = "hi"
        @english_file.group_rows(text)
    end

    def test_assign_braille_letter_number_and_special_char
        assert_equal "a", @english_file.braille_translate(["0.", "..", ".."])
        assert_equal "?", @english_file.braille_translate(["..", "0.", "00"])
        assert_equal "A", @english_file.braille_translate(["0.", "..", ".0"])
    end

end