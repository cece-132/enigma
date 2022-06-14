require 'pry'
require_relative 'shifter'
require_relative 'enigma'

shifter = Shifter.new
enigma = Enigma.new

key = ARGV[2]
date = ARGV[3]

message = File.open(ARGV[0], "r")
decrypt = enigma.decrypt(message.read, key, date)
message.close


decrypted = File.open(ARGV[1], "w")
decrypted.write(decrypt[:decryption])
decrypted.close

puts "Created '#{ARGV[1]}' with the key #{key} and the date #{date}"