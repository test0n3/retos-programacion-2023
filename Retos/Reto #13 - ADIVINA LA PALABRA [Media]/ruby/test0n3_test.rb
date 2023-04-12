# frozen_string_literal: false

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './test0n3'

# class for testing
class HangmanTest < Minitest::Test
  EXAMPLE_WORD = 'television'

  def test_initialize_numbers
    # skip
    source = Hangman.new(EXAMPLE_WORD)

    missing_char_number = source.instance_variable_get(:@missing_chars).uniq.length
    expected1 = (1..EXAMPLE_WORD.length).to_a
    assert_includes expected1, missing_char_number

    attempts_number = source.instance_variable_get(:@attempts)
    expected2 = missing_char_number + 1
    assert_equal expected2, attempts_number

    game_word_number = source.instance_variable_get(:@game_word).count('_')
    expected3 = [missing_char_number, missing_char_number + 1]
    assert_includes expected3, game_word_number
  end

  def test_wrong_input_compare_char
    # skip
    source = Hangman.new(EXAMPLE_WORD)
    source.check_char('q')
    answer = source.instance_variable_get(:@missing_chars).uniq.length
    expected = source.instance_variable_get(:@attempts)
    assert_equal expected, answer
  end

  def test_ok_input_compare_char
    # skip
    source = Hangman.new(EXAMPLE_WORD)
    input = source.instance_variable_get(:@missing_chars)[0]
    source.check_char(input)
    answer = source.instance_variable_get(:@missing_chars).uniq.length + 2
    expected = source.instance_variable_get(:@attempts)
    assert_equal expected, answer
  end

  def test_wrong_input_check_word
    # skip
    source = Hangman.new(EXAMPLE_WORD)
    source.check_word('primera')
    answer = source.instance_variable_get(:@missing_chars).uniq.length
    expected = source.instance_variable_get(:@attempts)
    assert_equal expected, answer
  end

  def test_ok_input_check_word
    # skip
    source = Hangman.new(EXAMPLE_WORD)
    source.check_word('television')
    answer = source.instance_variable_get(:@attempts)
    expected = 0
    assert_equal expected, answer
  end

  def test_game_preparation_empty
    # skip
    source = Hangman.new('')
    answer = source.instance_variable_get(:@game_initial_data)
    expected = { game_word: '', missing_chars: [] }
    assert_equal expected, answer
  end

  def test_game_preparation_word
    skip
    source = Hangman.new(EXAMPLE_WORD)
    answer = source.instance_variable_get(:@missing_chars)
    expected = {}
    assert_equal expected, answer
  end

  def test_game_preparation_sentence
    skip
    source = Hangman.new('first try with a long sentence')
    answer = source.instance_variable_get(:@game_initial_data)
    expected = {}
    assert_equal expected, answer
  end
end
