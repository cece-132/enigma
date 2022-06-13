# this class will return the date from 
# the shifter class if nothing is input

#If key.nil? == true reset key value to new_key
require_relative '../lib/shifter.rb'

class Enigma
    attr_reader :alpha, :shifter, :encryption
    def initialize
        @alpha = ("a".."z").to_a << " "
        @shifter = Shifter.new
        @encryption = {}
    end

    def encryptor(message, key, date = shifter.date_formater)
        new_key = shifter.keys
        # message =
        @encryption[:message] = message
        @encryption[:key] = key
        @encryption[:date] = date
        @encryption
    end

    def encode(message)

    end

    def decrypt(ciphertext, key, date)
        
    end
end