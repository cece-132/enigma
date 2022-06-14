# this class will return the date from 
# the shifter class if nothing is input

#If key.nil? == true reset key value to new_key

class Enigma
    attr_reader :alpha, :shifter, :encryption, :shift_a, :shift_b, :shift_c, :shift_d
    def initialize
        @alpha = ("a".."z").to_a << " "
        @shifter = Shifter.new
        @encryption = {}
        @shift_a = @shifter.key_a
        @shift_b = @shifter.key_b
        @shift_c = @shifter.key_c
        @shift_d = @shifter.key_d
        @new_message = []
    end

    def encrypt(message, key, date)           
         @shifter.keys = key
         @shifter.date = date
         note = message.chars
         rotate_a

    end

    def rotate_a
       rotated = @alpha.rotate(@shifter.key_a)
       pairs = @alpha.zip(rotated).to_h
        binding.pry

    end

    def rotate_b
        rotated = @alpha.rotate(@shifter.key_b)
        pairs = @alpha.zip(rotated).to_h
    end

    def rotate_c
       rotated = @alpha.rotate(@shifter.key_c)
       pairs = @alpha.zip(rotated).to_h
    end

    def rotate_d
       rotated = @alpha.rotate(@shifter.key_d)
       pairs = @alpha.zip(rotated).to_h
    end

    


































































































    # def encryptor(message, key, date)
    #     if key.nil?
    #         key = @shifter.keys 
    #     else
    #         @shifter.keys = key
    #     end
        
    #     if date.nil?
    #         date = @shifter.date 
    #     else
    #         @shifter.date = date
    #     end

    #     encode(message, key, date)

    #     @encryption[:message] = message
    #     @encryption[:key] = key
    #     @encryption[:date] = date

    #     @encryption
    # end

    # def encode(message, key, date)
    #     message.chars.map do |character|
    #     binding.pry
    #     end
    # end

    # def separator(message)
    #     counter = 1
    #     message.chars.map do |character|
    #         if counter == 1
    #             @key_a << character
    #             counter += 1
    #         elsif counter == 2
    #             @key_b << character
    #             counter += 1
    #         elsif counter == 3
    #             @key_c << character
    #             counter += 1
    #         elsif counter == 4
    #             @key_d << character
    #             counter += 1
    #         else
    #             @key_a << character
    #             counter -= 3
    #         end
    #     end
    # end

    # def rotate_a
    #     rotate = @key_a.map do |character|
    #         if character.ord == 32
    #             character.ord
    #         else
    #             character.downcase.ord + @shifter.key_a
    #         end
    #         end
    #         rotated = rotate.map do |ordinal_number|
    #             until ordinal_number < 122
    #                 ordinal_number -= 27 
    #             end
    #            ordinal_number.chr
    #          end
    #          rotated
    # end

    # def rotate_b
    #     rotate = @key_b.map do |character|
    #     if character.ord == 32
    #         character.ord
    #     else
    #         character.downcase.ord + @shifter.key_b
    #     end
    #     end
    #     rotated = rotate.map do |ordinal_number|
    #         until ordinal_number < 122
    #             ordinal_number -= 27 
    #         end
    #        ordinal_number.chr
    #      end
    #      rotated
    # end

    # def rotate_c
    #     rotate = @key_c.map do |character|
    #         if character.ord == 32
    #             character.ord
    #         else
    #             character.downcase.ord + @shifter.key_c
    #         end
    #         end
    #         rotated = rotate.map do |ordinal_number|
    #             until ordinal_number < 122
    #                 ordinal_number -= 27 
    #             end
    #            ordinal_number.chr
    #          end
    #          rotated
    # end

    # def rotate_d
    #     rotate = @key_d.map do |character|
    #         if character.ord == 32
    #             character.ord
    #         else
    #             character.downcase.ord + @shifter.key_d
    #         end
    #         end
    #         rotated = rotate.map do |ordinal_number|
    #             until ordinal_number < 122
    #                 ordinal_number -= 27 
    #             end
    #            ordinal_number.chr
    #          end
    #          rotated
    # end

    def decrypt(ciphertext, key, date)
        
    end
end