require 'pry'
require 'date'

class Shifter
    attr_reader :keys, :date
    def initialize(keys = rand(99999).to_s.rjust(5, "0"), date = date_formater)
        @keys = keys
        @date = date
    end

    def separator
        @keys.to_s.rjust(5, "0").chars
    end
    
    def key_a
     num = separator[0..1].join.to_i + (squared_date[0].to_i)
    end

    def key_b
        num = separator[1..2].join.to_i + (squared_date[1].to_i)
    end

    def key_c
        num = separator[2..3].join.to_i + (squared_date[2].to_i)
    end

    def key_d
        num = (separator[3..4].join.to_i) + (squared_date[3].to_i)
    end

    def date_formater
        date = []
        if @date == nil || 0
            @date = Date.today 
            day = @date.strftime("%m/%d/%Y").delete("/").chars[2..3]
            month = @date.strftime("%m/%d/%Y").delete("/").chars[0..1]
            year =  @date.strftime("%m/%d/%Y").delete("/").chars[6..7]
            date << day
            date << month
            date << year
            @date = date.flatten.join.to_i
        end
    end

    def squared_date
        num = @date ** 2
        num.to_s.chars.last(4).join.to_i
    end
end
# num = @offsets.strftime.slice(2..-1).delete("-").to_i ** 2
# num.to_s.chars.last(4)