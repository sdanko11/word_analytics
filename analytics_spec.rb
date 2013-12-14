require 'rspec'
require_relative 'analytics'

describe WordAnalytics do

  let(:phrase1) { WordAnalytics.new("my my my my") }
  let(:phrase2) { WordAnalytics.new("this is 22 22 44 44 33     ") }
  let(:phrase3) { WordAnalytics.new("?? ??? asfdas 222 $$ ///") }
  let(:phrase4) { WordAnalytics.new("----------") }
  let(:phrase5) { WordAnalytics.new("/////--00000") }

    it 'it should calculate the amount of times each word is used in a phrase' do
      expect(phrase1.start_word_count).to eql([{'my' => 4}])
    end

    it 'it should calculate the amount of times each word is used in a phrase' do
      expect(phrase2.start_word_count).to eql([{'this' => 1}, {'is' => 1},{'22' => 2}, {'44' => 2}, {'33' => 1}])
    end

    it "should calculate the number of times each character is used" do
      expect(phrase1.start_letter_count).to eql([{'m' => 4}, {'y' => 4}])
    end

    it "should calculate the number of times each character is used" do
      expect(phrase3.start_letter_count).to eql([{'?' => 5}, {"a"=>2}, {'s'=>2}, {'f'=>1},
      {'d'=>1}, {'2'=> 3}, {'$'=> 2}, {'/'=>3}])
    end

    it "should calculate the number of times each character is used" do
      expect(phrase4.start_letter_count).to eql([{'-' => 10}])
    end

    it "should calculate the number of times each character is used" do
      expect(phrase5.start_letter_count).to eql([{'/'=> 5}, {'-' => 2}, {'0' => 5}])
    end
end