require_relative './braille'

handle = File.open(ARGV[0], "r")

incoming_text = handle.read

file = Braille.new(incoming_text)

english_writer = file.translate(incoming_text)

handle.close

writer = File.open(ARGV[1], "w")

writer.write(english_writer)

writer.close

puts "Created '#{ARGV[1]}' containing #{incoming_text.length} charaters."