handle = File.open(ARGV[0], "r")

incoming_text = handle.read

handle.close
#CREATE A NEW VARIABLE TO SET WHAT YOU WANT TO DO FOR WRITTING
writer = File.open(ARGV[1], "w")

writer.write(##what you want to add)

writer.close

"Created '#{ARGV[1]}' containing #{incoming_text.length} characters."