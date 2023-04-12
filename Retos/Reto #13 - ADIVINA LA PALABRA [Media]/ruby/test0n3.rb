# frozen_string_literal: false

# class for game Hangman
class Hangman
  def initialize(original_word)
    @original_word = original_word
    @game_initial_data = game_preparation
    @game_word = @game_initial_data[:game_word]
    @missing_chars = @game_initial_data[:missing_chars]
    @attempts = set_attempts
  end

  def set_attempts
    @missing_chars.length + 1
  end

  def game_preparation
    return { game_word: '', missing_chars: [] } if @original_word.length < 2

    max_missing_chars = Random.rand(@original_word.length * 6 / 10) + 1
    missing_chars = []
    game_word = @original_word.clone
    while max_missing_chars.positive?
      char_pos = Random.rand(@original_word.length)
      next if (game_word[char_pos] == ' ') || (game_word[char_pos] == '_')

      missing_chars.push(game_word[char_pos])
      game_word[char_pos] = '_'
      max_missing_chars -= 1
    end
    { game_word: game_word, missing_chars: missing_chars.uniq }
  end

  def check_char(user_input)
    return @attempts -= 1 unless @missing_chars.include? user_input

    pos_char = (0...@original_word.length).find_all { |i| @original_word[i] == user_input }
    @missing_chars -= [user_input]
    pos_char.each do |pos|
      @game_word[pos] = user_input
    end
    @attempts = 0 if @original_word == @game_word
  end

  def check_word(user_input)
    if @original_word == user_input
      @attempts = 0
      @game_word = user_input
    else
      @attempts -= 1
    end
  end

  def puts_user_request
    print "\nWord to complete is: #{@game_word}
    \nYou have #{@attempts} left, you can type a character or the whole word [a-z].
    \nWhat's your input?\t"
    gets.chomp
  end

  def end_game
    texts = { win_msg: "You win!\nThe word is #{@game_word}",
              lose_msg: "You lose!\nThe expected word is #{@original_word}" }

    if @game_word == @original_word
      puts texts[:win_msg]
    else
      puts texts[:lose_msg]
    end
  end

  def start_game
    puts "Hangman game\n------------\nInput only characters, [a-z], to complete the word."
    while @attempts.positive?
      user_input = puts_user_request
      if user_input.length < 2
        check_char(user_input)
      else
        check_word(user_input)
      end
    end
    end_game
  end
end

# Hangman.new('first try with a long sentence').start_game
