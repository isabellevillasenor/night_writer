require_relative './braille'

handle = File.open(ARGV[0], "r")

incoming_text = handle.read

file = Braille.new(incoming_text)
#CREATE A NEW VARIABLE TO SET WHAT YOU WANT TO DO FOR WRITTING
#braille_writer = file.translate(incoming_text)

handle.close

writer = File.open(ARGV[1], "w")

writer.write(#braille_writer)

writer.close

"Created '#{ARGV[1]}' containing #{incoming_text.length} characters."