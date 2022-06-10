require_relative '../lib/rotater'

RSpec.describe do Rotater
    before :each do
        @rotater = Rotater.new
    end
    it 'exists and has attributes' do

     expect(@rotater).to be_a Rotater
     expect(@rotater.alpha).to be_a Array
     expect(@rotater.alpha.length).to eq 27
    end

    it 'can separate characters into a string array' do
        expect(@rotater.message("hello world")).to be_a Array
        expect(@rotater.message("hello world").first).to be_a String
        expect(@rotater.message("hello world")).to eq ['h','e','l','l','o',' ','w','o','r','l','d']
    end

    it 'can rotate the letters three places' do
        expect(@rotater.rotate_array("hello world")).to be_a String
        expect(@rotater.rotate_array("hello world")).to eq 'khoor#zruog'
    end

    it 'can rotate the letters back to their original position' do
        expect(@rotater.revert_array_to_english('khoor#zruog')).to be_a String
        expect(@rotater.revert_array_to_english('khoor#zruog')).to eq 'hello world'
    end

end