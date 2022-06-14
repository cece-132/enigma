require_relative '../lib/shifter'
require_relative '../lib/enigma'

RSpec.describe do Enigma
    before :each do
        @enigma = Enigma.new
    end

    it 'exists and has attributes' do
        expect(@enigma).to be_a Enigma
        expect(@enigma.alpha.length).to eq 27
    end

    it 'can encrypt a message' do
        expected = {
                encryption: "keder ohulw",
                key: "02715",
                date: "040895"
              }

        expect(@enigma.encrypt('hello world', '02715', '040895')).to eq expected
    end

    it 'can decrypt a message' do
        expected = {
            encryption: "hello world",
            key: "02715",
            date: "040895"
          }
        expect(@enigma.decrypt("keder ohulw", "02715", "040895")).to eq expected
    end


end