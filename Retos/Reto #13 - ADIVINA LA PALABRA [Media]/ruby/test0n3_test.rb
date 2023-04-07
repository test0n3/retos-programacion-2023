# frozen_string_literal: false

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './test0n3'

# class for testing
class HangmanTest < Minitest::Test
  EXAMPLE_WORD = 'primera'

  def test_initialize_numbers
    # skip
    source = Hangman.new(EXAMPLE_WORD)

    missing_char_pos_number = source.instance_variable_get(:@missing_chars_pos).length
    expected1 = (1..EXAMPLE_WORD.length).to_a
    assert_includes expected1, missing_char_pos_number

    attempts_number = source.instance_variable_get(:@attempts)
    expected2 = missing_char_pos_number + 1
    assert_equal expected2, attempts_number

    missing_char_numbers = source.instance_variable_get(:@missing_chars).length
    expected3 = missing_char_pos_number
    assert_equal expected3, missing_char_numbers

    game_word_number = source.instance_variable_get(:@game_word).count('_')
    expected4 = missing_char_pos_number
    assert_equal expected4, game_word_number
  end

  def test_wrong_input_compare_char
    # skip
    source = Hangman.new(EXAMPLE_WORD)
    source.check_char('q')
    expected = source.instance_variable_get(:@attempts) - 1
    assert_equal expected, source.instance_variable_get(:@missing_chars_pos).length
  end

  def test_ok_input_compare_char
    skip
    source = Hangman.new(EXAMPLE_WORD)
    input = source.instance_variable_get(:@missing_chars)[0]
    source.check_char(input)
    expected = source.instance_variable_get(:@attempts)
    assert_equal expected, source.instance_variable_get(:@missing_chars_pos).length
  end
end
