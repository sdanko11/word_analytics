require 'pry'
require 'rspec'


class WordAnalytics

  def initialize(phrase)
    @phrase = phrase
    @all_characters = []
  end

  # def check_for_phrase_or_string
  #   if @phrase.include?(' ')
  #     # binding.pry
  #     # get_each_word
  #   else 
  #     get_each_letter
  #   end
  # end

  def get_each_word
    binding.pry
    @phrase = @phrase.split(' ')
  end

  def get_each_letter
    @phrase = @phrase.gsub(/\s+/, "")
    array_of_letters = @phrase.split('')
    @phrase = array_of_letters
  end

  def count_characters
    @phrase.each do |each_letter|
      @all_characters.each do |letter|
        if each_letter == letter.keys[0]
          letter[each_letter] += 1
      end
    end
  end
  binding.pry
end

  def get_unique_characters
    uniq_characters = @phrase.uniq
    uniq_characters.each do |character|
        uniq_characters = {character => 0}
        @all_characters << uniq_characters
    end
  end
end

word = WordAnalytics.new("thisi s3;;;;---222    3p222ase")
word.get_each_letter
word.get_unique_characters
word.count_characters

