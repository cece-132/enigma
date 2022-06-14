require 'pry'

class Enigma
    attr_reader :alpha, :encryption, :counter, :new_message, :decryption
    def initialize
     @alpha = ("a".."z").to_a << " "
     @shifter = Shifter.new
     @encryption = {}
     @decryption = {}
     @counter = 0
     @new_message = Array.new
    end

    def encrypt(message, key = @shifter.keys, date = @shifter.date) 
     @shifter = Shifter.new(key, date)
     @shift_a = @shifter.key_a
     @shift_b = @shifter.key_b
     @shift_c = @shifter.key_c
     @shift_d = @shifter.key_d
     @shifts = [@shift_a, @shift_b, @shift_c, @shift_d]

     message.chars.map do |character|
      @new_message << rotate(@shifts[@counter])[character]
      @counter += 1
      @counter = 0 if @counter == 4
     end
     encryption[:encryption] = @new_message.join
     encryption[:key] = key
     encryption[:date] = date
     encryption
    end

    def rotate(shift)
     rotated = @alpha.rotate(shift)
     @alpha.zip(rotated).to_h
    end

    def reverse_rotate(shift)
     rotated = @alpha.rotate(shift)
     rotated.zip(@alpha).to_h
    end

    def decrypt(message,key,date = @shifter.date)
     @shifter = Shifter.new(key, date)
     @shift_a = @shifter.key_a
     @shift_b = @shifter.key_b
     @shift_c = @shifter.key_c
     @shift_d = @shifter.key_d
     @shifts = [@shift_a, @shift_b, @shift_c, @shift_d]

     message.chars.map do |character|
      @new_message << reverse_rotate(@shifts[@counter])[character]
      @counter += 1
      @counter = 0 if @counter == 4
     end

     decryption[:decryption] = @new_message.join
     decryption[:key] = key
     decryption[:date] = date
     decryption    
    end


end