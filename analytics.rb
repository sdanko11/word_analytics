require_relative "top_three"
require 'pry'
require 'rspec'

class WordAnalytics

  attr_reader :character_count

  def initialize(phrase)
    @phrase = phrase
    @letters = []
    @total_counts = []
  end

  def start_word_count
    words = @phrase.split(' ')
    get_unique_character_or_words(words)
  end

  def start_letter_count
    letters = @phrase.delete(' ')
    array_of_letters = letters.split('')
    @letters = array_of_letters
    get_unique_character_or_words(@letters)
  end

  def get_unique_character_or_words(words_or_letters)
    all_characters = []
    uniq_characters = words_or_letters.uniq
      uniq_characters.each do |character|
          uniq_characters = {character => 0}
          all_characters << uniq_characters
      end
    count_characters_or_words(all_characters, words_or_letters)
  end

  def count_characters_or_words(character_or_word_count, all_letters)
    all_letters.each do |each_letter|
      character_or_word_count.each do |letter|
        if each_letter == letter.keys[0]
          letter[each_letter] += 1
        end
      end
    end
    @character_count = character_or_word_count
  end

end