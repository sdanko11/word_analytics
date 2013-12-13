require 'rspec'
require_relative 'analytics'

describe WordAnalytics do

  let(:phrase1) { WordAnalytics.new("this is my string blah vhl       ") }
  let(:phrase2) { WordAnalytics.new("this is 22 string blah vhl  33     ") }
  let(:phrase3) { WordAnalytics.new("?? ??? asfdas 222 $$ ///") }

    it 'should join the string together eliminating all white space' do
      expect(phrase1.get_each_word).to eql(['this','is', 'my', 'string', 'blah', 'vhl'])
    end

    it 'should split all the words into an empty array' do
      expect(phrase2.get_each_word).to eql(['this','is', '22', 'string', 'blah', 'vhl', '33'])
    end

    it 'should split all the words into an empty array' do
      expect(phrase3.get_each_word).to eql(['??','???', 'asfdas', '222', '$$', '///'])
    end

    it 'should join all the words in a phrase together' do
      expect(phrase1.get_each_letter).to eql("thisismystringblahvhl")
    end

    it 'should join all the words in a phrase together' do
      expect(phrase2.get_each_letter).to eql("thisis22stringblahvhl33")
    end

    it 'should join all the words in a phrase together' do
      expect(phrase3.get_each_letter).to eql("?????asfdas222$$///")
    end

end