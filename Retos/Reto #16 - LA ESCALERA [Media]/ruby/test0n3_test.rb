# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './test0n3'

# testing methods for stairs display
class StairsTest < Minitest::Test
  def test_stair_zero
    # skip
    input = 0
    expected = '__'
    assert_equal stairs_generator(input), expected
  end

  def test_stair_positive
    skip
    input = 4
    expected = "        _\n      _| \n    _|   \n  _|     \n_|       "
    assert_equal stairs_generator(input), expected
  end

  def test_new_stair_positive
    # skip
    input = 4
    expected = "        _\n      _|\n    _|\n  _|\n_|"
    assert_equal stairs_generator(input), expected
  end

  def test_stair_negative
    # skip
    input = -5
    expected = "_\n |_\n   |_\n     |_\n       |_\n         |_"
    assert_equal stairs_generator(input), expected
  end
end
