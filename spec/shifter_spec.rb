require_relative '../lib/shifter'
require_relative '../lib/rotater'
require 'pry'

RSpec.describe do Shifter
    before :each do
        @shifter = Shifter.new('02715', '040895')    
        @rotater = Rotater.new    
    end

    it 'exists and has attributes' do
        expect(@shifter).to be_a Shifter
        expect(@shifter.keys).to be_a String
        expect(@shifter.date).to be_a String
    end

    it 'can separate the @keys' do
        expect(@shifter.separator).to be_a Array
        expect(@shifter.separator.length).to eq 5
    end

    it 'can use @keys to determine 4 keys' do
        expect(@shifter.key_a).to be_a Integer
        expect(@shifter.key_b).to be_a Integer
        expect(@shifter.key_c).to be_a Integer
        expect(@shifter.key_d).to be_a Integer
    end

    it 'can format the date by DDMMYY'do
        expect(@shifter.date_formater).to be_a Integer
        expect(@shifter.date.to_s.chars.length).to eq 6
    end

    it 'can square the date' do
        expect(@shifter.squared_date).to be_a Array
        expect(@shifter.squared_date.length).to eq 4
    end

end