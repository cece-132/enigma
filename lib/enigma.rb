# come back to revist how shifter can use zeros
# this class will return the date from the shifter class if nothing is input
# needs a from shifter class
require_relative '../lib/shifter.rb'

class Enigma
    attr_reader :alpha, :shifter
    def initialize
        @alpha = ("a".."z").to_a << " "
        @shifter = Shifter.new
    end

    def encryptor(message, key, date)
        
    end

    def decrypt(ciphertext, key, date)
        
    end
end