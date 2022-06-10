require 'pry'

input_file = File.open(ARGV[0], "r")
message_reader = input_file.read.strip
input_file.close

translate = Translator.new(message_reader)

writer = File.open(ARGV[1], "w")
writer.write(translate.split_lines)
writer.close

puts "Created '#{ARGV[1]}' with the key #{key} and the date #{date}"