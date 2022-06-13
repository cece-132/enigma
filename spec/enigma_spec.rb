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
    end


end