class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def play
    while !@game_over
      self.take_turn
    end
    self.game_over_message
    self.game_over = true
    reset_game
  end

  def take_turn
    if !game_over
      self.show_sequence
      self.require_sequence
      self.round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color

  end

  def require_sequence

  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    p "round success"
  end

  def game_over_message
    p "game over"
  end

  def reset_game
    if game_over == true
      self.sequence_length = 1
      self.seq = []
      self.game_over = false
    end
  end
end
