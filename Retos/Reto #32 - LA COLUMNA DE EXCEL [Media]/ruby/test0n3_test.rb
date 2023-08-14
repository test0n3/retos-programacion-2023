# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './test0n3'

# class test CellColumnCounter
class ColumnCounterTest < Minitest::Test
  def test_valid_input1
    # skip
    input = 'A'
    assert_equal '1', ColumnCounter.new(input).numeric_position
  end

  def test_valid_input2
    # skip
    input = 'CA'
    assert_equal '79', ColumnCounter.new(input).numeric_position
  end

  def test_valid_input3
    # skip
    input = 'zza'
    assert_equal '18253', ColumnCounter.new(input).numeric_position
  end

  def test_invalid_input1
    # skip
    input = ''
    assert_equal 'invalid input', ColumnCounter.new(input).numeric_position
  end

  def test_invalid_input2
    # skip
    input = '1A'
    assert_equal 'invalid input', ColumnCounter.new(input).numeric_position
  end
end
