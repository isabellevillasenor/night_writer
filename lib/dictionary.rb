module Dictionary

    def assign_braille_to_english
        {
            "a" => ["0.", "..", ".."],
            "b" => ["0.", "0.", ".."],
            "c" => ["00", "..", ".."],
            "d" => ["00", ".0", ".."],
            "e" => ["0.", ".0", ".."],
            "f" => ["00", "0.", ".."],
            "g" => ["00", "00", ".."],
            "h" => ["0.", "00", ".."],
            "i" => [".0", "0.", ".."],
            "j" => [".0", "00", ".."],
            "k" => ["0.", "..", "0."],
            "l" => ["0.", "0.", "0."],
            "m" => ["00", "..", "0."],
            "n" => ["00", ".0", "0."],
            "o" => ["0.", ".0", "0."],
            "p" => ["00", "0.", "0."],
            "q" => ["00", "00", "0."],
            "r" => ["0.", "00", "0."],
            "s" => [".0", "0.", "0."],
            "t" => [".0", "00", "0."],
            "u" => ["0.", "..", "00"],
            "v" => ["0.", "0.", "00"],
            "w" => [".0", "00", ".0"],
            "x" => ["00", "..", "00"],
            "y" => ["00", ".0", "00"],
            "z" => ["0.", ".0", "00"],
            " " => ["..", "..", ".."],
            "!" => ["..", "00", "0."],
            "'" => ["..", "..", "0."],
            "," => ["..", "0.", ".."],
            "-" => ["..", "..", "00"],
            "." => ["..", "00", ".0"],
            "?" => ["..", "0.", "00"],
            "0" => [".0", "00", ".."],
            "1" => ["0.", "..", ".."],
            "2" => ["0.", "0.", ".."],
            "3" => ["00", "..", ".."],
            "4" => ["00", ".0", ".."],
            "5" => ["0.", ".0", ".."],
            "6" => ["00", "0.", ".."],
            "7" => ["00", "00", ".."],
            "8" => ["0.", "00", ".."],
            "9" => [".0", "0.", ".."],
            "A" => ["0.", "..", ".0"],
            "B" => ["0.", "0.", ".0"],
            "C" => ["00", "..", ".0"],
            "D" => ["00", ".0", ".0"],
            "E" => ["0.", ".0", ".0"],
            "F" => ["00", "0.", ".0"],
            "G" => ["00", "00", ".0"],
            "H" => ["0.", "00", ".0"],
            "I" => [".0", "0.", ".0"],
            "J" => [".0", "00", ".0"],
            "K" => ["0.", "..", "00"],
            "L" => ["0.", "0.", "00"],
            "M" => ["00", "..", "00"],
            "N" => ["00", ".0", "00"],
            "O" => ["0.", ".0", "00"],
            "P" => ["00", "0.", "00"],
            "Q" => ["00", "00", "00"],
            "R" => ["0.", "00", "00"],
            "S" => [".0", "0.", "00"],
            "T" => [".0", "00", "00"]
        }
    end

    def assign_english_to_braille
        {
            ["0.", "..", ".."] => "a",
            ["0.", "0.", ".."] => "b",
            ["00", "..", ".."] => "c",
            ["00", ".0", ".."] => "d",
            ["0.", ".0", ".."] => "e",
            ["00", "0.", ".."] => "f",
            ["00", "00", ".."] => "g",
            ["0.", "00", ".."] => "h",
            [".0", "0.", ".."] => "i",
            [".0", "00", ".."] => "j",
            ["0.", "..", "0."] => "k",
            ["0.", "0.", "0."] => "l",
            ["00", "..", "0."] => "m",
            ["00", ".0", "0."] => "n",
            ["0.", ".0", "0."] => "o",
            ["00", "0.", "0."] => "p",
            ["00", "00", "0."] => "q",
            ["0.", "00", "0."] => "r",
            [".0", "0.", "0."] => "s",
            [".0", "00", "0."] => "t",
            ["0.", "..", "00"] => "u",
            ["0.", "0.", "00"] => "v",
            [".0", "00", ".0"] => "w",
            ["00", "..", "00"] => "x",
            ["00", ".0", "00"] => "y",
            ["0.", ".0", "00"] => "z",
            ["..", "..", ".."] => " ",
            ["..", "00", "0."] => "!",
            ["..", "..", "0."] => "'",
            ["..", "0.", ".."] => ",",
            ["..", "..", "00"] => "-",
            ["..", "00", ".0"] => ".",
            ["..", "0.", "00"] => "?",
            ["0.", "..", ".0"] => "A",
            ["0.", "0.", ".0"] => "B",
            ["00", "..", ".0"] => "C",
            ["00", ".0", ".0"] => "D",
            ["0.", ".0", ".0"] => "E",
            ["00", "0.", ".0"] => "F",
            ["00", "00", ".0"] => "G",
            ["0.", "00", ".0"] => "H",
            [".0", "0.", ".0"] => "I",
            [".0", "00", ".0"] => "J",
            ["0.", "..", "00"] => "K",
            ["0.", "0.", "00"] => "L",
            ["00", "..", "00"] => "M",
            ["00", ".0", "00"] => "N",
            ["0.", ".0", "00"] => "O",
            ["00", "0.", "00"] => "P",
            ["00", "00", "00"] => "Q",
            ["0.", "00", "00"] => "R",
            [".0", "0.", "00"] => "S",
            [".0", "00", "00"] => "T"
        }
    end

    # def assign_num_to_braille
    #     {
    #         [".0", "00", ".."] => "0",
    #         ["0.", "..", ".."] => "1",
    #         ["0.", "0.", ".."] => "2",
    #         ["00", "..", ".."] => "3",
    #         ["00", ".0", ".."] => "4",
    #         ["0.", ".0", ".."] => "5",
    #         ["00", "0.", ".."] => "6",
    #         ["00", "00", ".."] => "7",
    #         ["0.", "00", ".."] => "8",
    #         [".0", "0.", ".."] => "9"

    #     }
    # end
end