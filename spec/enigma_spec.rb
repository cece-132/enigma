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

    it 'can return a Hash' do
        expect(@enigma.encryptor("hello world","02715","1025")).to be_a Hash
        expect(@enigma.encryption[:message]).to be_a String
        expect(@enigma.encryption[:message]).to eq "hello world"
        expect(@enigma.encryption[:message]).to eq "hello world"
        expect(@enigma.encryption[:key] && @enigma.encryption[:date]).to be_a String
        expect(@enigma.encryption[:key]).to eq "02715"
        expect(@enigma.encryption[:date]).to eq "1025"
    end

    it 'can take message as a string' do
    end


end