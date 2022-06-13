# this class will return the date from 
# the shifter class if nothing is input

#If key.nil? == true reset key value to new_key
require_relative '../lib/shifter.rb'

class Enigma
    attr_reader :alpha, :shifter, :encryption, :key_a, :key_b, :key_c, :key_d
    def initialize
        @alpha = ("a".."z").to_a << " "
        @shifter = Shifter.new
        @encryption = {}
        @key_a = Array.new
        @key_b = Array.new
        @key_c = Array.new
        @key_d = Array.new
    end

    def encryptor(message, key = shifter.keys, date = shifter.date_formater)
        separator(message)
        rotate_a
        # new_message = encode(message, key, date)
        @encryption[:message] = message
        @encryption[:key] = key
        @encryption[:date] = date
        @encryption
    end

    def encode(message, key, date)

    end

    def separator(message)
        counter = 1
        message.chars.map do |character|
            if counter == 1
                @key_a << character
                counter += 1
            elsif counter == 2
                @key_b << character
                counter += 1
            elsif counter == 3
                @key_c << character
                counter += 1
            elsif counter == 4
                @key_d << character
                counter += 1
            else
                @key_a << character
                counter -= 3
            end
        end
    end

    def rotate_a
     rotate = @key_a.map do |character|
      character.downcase.ord + @shifter.key_a
     end
     rotated = rotate.each do |ordinal_number|
        while ordinal_number > 122
            ordinal_number -= 27
        end
        binding.pry
        ordinal_number.chr
    end
    end

    def decrypt(ciphertext, key, date)
        
    end
end