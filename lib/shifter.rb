require 'pry'
require 'date'

class Shifter
    attr_reader :keys, :offsets
    def initialize
        @keys = rand(99999)
        @offsets = Date.today
    end

    def separator
        @keys.to_s.chars.map { |num| num}
    end
    
    def key_a
       num = separator[0..1].join.to_i + (squared_date[0].to_i)
       if num == nil || 00
         num += 1
       end
    end

    def key_b
        num = separator[1..2].join.to_i + (squared_date[1].to_i)
        if num == nil || 00
            num += 1
        end
    end

    def key_c
       num = separator[2..3].join.to_i + (squared_date[2].to_i)
        if num == nil || 00
            num += 1
        end
    end

    def key_d
       num = (separator[3..4].join.to_i) + (squared_date[3].to_i)
        if num == nil || 00
            num += 1
        end
    end

    def squared_date
     num = @offsets.strftime.slice(2..-1).delete("-").to_i ** 2
     num.to_s.chars.last(4)
    end
end