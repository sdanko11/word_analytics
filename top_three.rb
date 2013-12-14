require 'pry'
class TopThree

  def initialize(counts)
    @counts = counts.character_count
    # @order_counts = nil
  end

  def get_top_3_used_characters_or_words
    binding.pry
    @order_counts = @counts.sort_by { |hsh| hsh.values }

    until @order_counts.count == 3
      @order_counts.shift
      @order_counts.count
    end
    @order_counts
  end
end