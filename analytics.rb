require 'pry'
require 'rspec'


class WordAnalytics

  def initialize(phrase)
    @phrase = phrase
    @words = []
    @letters = []
  end

  def start_word_count
    @words = @phrase.split(' ')
    get_unique_character_or_words(@words)
  end

  def start_letter_count
    letters = @phrase.delete(' ')
    array_of_letters = letters.split('')
    @letters = array_of_letters
    get_unique_character_or_words(@letters)
  end

  def count_characters_or_words(character_or_word_count, all_letters)
    all_letters.each do |each_letter|
      character_or_word_count.each do |letter|
        if each_letter == letter.keys[0]
          letter[each_letter] += 1
      end
    end
  end
  puts character_or_word_count
  get_top_3_used_characters_or_words(character_or_word_count)
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

  def get_top_3_used_characters_or_words(character_or_word_count)
    until character_or_word_count.length == 3
      if character_or_word_count[0].values.join > character_or_word_count[1].values.join
        character_or_word_count.delete(character_or_word_count[1])
      else character_or_word_count.delete(character_or_word_count[0])
      end
      character_or_word_count.count
    end
    puts "top 3"
    puts character_or_word_count
  end
end

word = WordAnalytics.new("This is my test string string hahahah cool")
word.start_word_count
word.start_letter_count