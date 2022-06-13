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
        @key_a = []
        @key_b = []
        @key_c = []
        @key_d = []
    end

    def encryptor(message, key = shifter.keys, date = shifter.date_formater)
        new_message = encode(message, key, date)
        @encryption[:message] = key
        @encryption[:key] = key
        @encryption[:date] = date
        @encryption
    end

    def encode(message, key, date)
        
    end

    def rotate
     rotate = 0
     message.chars.map do |character|
      character.downcase.ord + @shifter.key_a
     end
        rotate.chr
        while rotate > 122
            rotate -= 27
        end
    end

    def decrypt(ciphertext, key, date)
        
    end
end