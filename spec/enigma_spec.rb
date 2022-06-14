require_relative '../lib/shifter'
require_relative '../lib/enigma'

RSpec.describe do Enigma
    before :each do
        @enigma = Enigma.new
    end

    it 'exists and has attributes' do
        expect(@enigma).to be_a Enigma
        expect(@enigma.alpha.length).to eq 27
        expect(@enigma.shifter).to be_a Shifter
        expect(@enigma.shifter.keys.length).to eq 5
        expect(@enigma.shifter.date).to be_a Integer
    end

    it 'can encrypt a message' do
        @enigma.encrypt('hello world', '02715', '040895')
        # expect(@enigma.encrypt('hello world', '02715', '1025')).to eq "keder ohulw"
    end


end