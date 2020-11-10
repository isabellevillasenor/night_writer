require_relative './braille_to_english'

handle = File.open(ARGV[0], "r")

incoming_text = handle.read

file = BrailleToEnglish.new(incoming_text)

english_writer = file.braille_translate(incoming_text)

handle.close

writer = File.open(ARGV[1], "w")

writer.write(english_writer)

writer.close

puts "Created '#{ARGV[1]}' containing #{incoming_text.length} charaters."