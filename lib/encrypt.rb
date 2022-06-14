require 'pry'
require_relative 'shifter'
require_relative 'enigma'

shifter = Shifter.new
enigma = Enigma.new

message = File.open(ARGV[0], "r")
encrypt = enigma.encrypt(message.read, shifter.keys)
message.close


encrypted = File.open(ARGV[1], "w")
encrypted.write(encrypt[:encryption])
encrypted.close

puts "Created '#{ARGV[1]}' with the key #{shifter.keys} and the date #{shifter.date}"
