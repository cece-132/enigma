require_relative '../lib/cipher'

RSpec.describe do Cipher
    before :each do
        @cipher = Cipher.new
    end
    it 'exists and has attributes' do

     expect(@cipher).to be_a Cipher
     expect(@cipher.alpha).to be_a Array
     expect(@cipher.alpha.length).to eq 27
    end

    it 'can separate characters into a string array' do
        expect(@cipher.message("hello world")).to be_a Array
        expect(@cipher.message("hello world").first).to be_a String
        expect(@cipher.message("hello world")).to eq ['h','e','l','l','o',' ','w','o','r','l','d']
    end

    it 'can rotate the letters three places' do
        expect(@cipher.rotate_array("hello world")).to be_a String
        expect(@cipher.rotate_array("hello world")).to eq 'khoor#zruog'
    end

    it 'can rotate the letters back to their original position' do
        expect(@cipher.revert_array_to_english('khoor#zruog')).to be_a String
        expect(@cipher.revert_array_to_english('khoor#zruog')).to eq 'hello world'
    end

end