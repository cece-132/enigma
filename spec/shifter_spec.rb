require_relative '../lib/shifter'
require_relative '../lib/rotater'

RSpec.describe do Shifter
    before :each do
        @shifter = Shifter.new    
        @rotater = Rotater.new    
    end

    it 'exists and has attributes' do
        expect(@shifter).to be_a Shifter
        expect(@shifter.keys).to be_a Integer
        expect(@shifter.offsets).to be_a Date
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

    it 'can square the date' do
        expect(@shifter.squared_date).to be_a Array
        expect(@shifter.squared_date.first).to be_a String
        expect(@shifter.squared_date.length).to eq 4
    end

end