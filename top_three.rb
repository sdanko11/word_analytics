class TopThree

  def initialize(counts)
    @counts = counts.character_count
  end

  def get_top_3_used_characters_or_words
    @order_counts = @counts.sort_by { |hsh| hsh.values }
      until @order_counts.count == 3
        @order_counts.shift
        @order_counts.count
      end
      @order_counts
    end
  end