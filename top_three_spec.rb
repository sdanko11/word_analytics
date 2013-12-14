require 'rspec'
require_relative 'analytics'
require_relative 'top_three'

describe TopThree do

  word = WordAnalytics.new("word word word word word word yes yes yes yes no yes no ha steve")
  word.start_word_count

  word3 = WordAnalytics.new("tttttttsssssiiiivqqqq444")
  word3.start_letter_count

  characters = WordAnalytics.new(';;;;;---2222..?')
  characters.start_letter_count
  
  let(:word1) { TopThree.new(word) }
  let(:word2) { TopThree.new(word3) }
  let(:word5) { TopThree.new(characters) }

    it 'it should calculate the top 3 words used words in a phrase' do
      expect(word1.get_top_3_used_characters_or_words).to eql([{'no'=>2}, {'yes'=> 5}, {'word' => 6}])
    end

    it 'it should calculate the top 3 used characters in a phrase' do
      expect(word2.get_top_3_used_characters_or_words).to eql([{"q"=>4}, {"s"=>5}, {"t"=>7}])
    end

    it 'it should calculate the top 3 used characters in a phrase'  do
      expect(word5.get_top_3_used_characters_or_words).to eql([{'-'=> 3}, {'2' => 4},{';'=>5}])
    end
end