class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    return game_over_message if game_over
   
    round_success_message
    add_random_color
    @sequence_length += 1
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
    puts "you won"
  end

  def game_over_message
    puts " game over"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end