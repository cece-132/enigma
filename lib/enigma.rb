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

    def encryptor(message, key, date)
        if key.nil?
            key = @shifter.keys 
        else
            @shifter.keys = key
        end
        
        if date.nil?
            date = @shifter.date 
        else
            @shifter.date = date
        end

        encode(message, key, date)

        @encryption[:message] = message
        @encryption[:key] = key
        @encryption[:date] = date

        @encryption
    end

    def encode(message, key, date)
        separator(message)
        rotate_a
        rotate_b
        rotate_c
        rotate_d
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
            if character.ord == 32
                character.ord
            else
                character.downcase.ord + @shifter.key_a
            end
            end
            rotated = rotate.map do |ordinal_number|
                until ordinal_number < 122
                    ordinal_number -= 27 
                end
               ordinal_number.chr
             end
             rotated
    end

    def rotate_b
        rotate = @key_b.map do |character|
        if character.ord == 32
            character.ord
        else
            character.downcase.ord + @shifter.key_b
        end
        end
        rotated = rotate.map do |ordinal_number|
            until ordinal_number < 122
                ordinal_number -= 27 
            end
           ordinal_number.chr
         end
         rotated
    end

    def rotate_c
        rotate = @key_c.map do |character|
            if character.ord == 32
                character.ord
            else
                character.downcase.ord + @shifter.key_c
            end
            end
            rotated = rotate.map do |ordinal_number|
                until ordinal_number < 122
                    ordinal_number -= 27 
                end
               ordinal_number.chr
             end
             rotated
    end

    def rotate_d
        rotate = @key_d.map do |character|
            if character.ord == 32
                character.ord
            else
                character.downcase.ord + @shifter.key_d
            end
            end
            rotated = rotate.map do |ordinal_number|
                until ordinal_number < 122
                    ordinal_number -= 27 
                end
               ordinal_number.chr
             end
             rotated
    end

    def decrypt(ciphertext, key, date)
        
    end
end