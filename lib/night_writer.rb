require_relative './english_to_braille'

handle = File.open(ARGV[0], "r")

incoming_text = handle.read

file = EnglishToBraille.new(incoming_text)

braille_writer = file.translate(incoming_text)

handle.close

writer = File.open(ARGV[1], "w")

writer.write(braille_writer)

writer.close

puts "Created '#{ARGV[1]}' containing #{incoming_text.length} characters."