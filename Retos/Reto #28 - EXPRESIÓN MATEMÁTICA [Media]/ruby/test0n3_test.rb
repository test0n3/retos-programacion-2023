# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './test0n3'

# CalculatorTest for valid operation
class CalculatorTest < Minitest::Test
  def test_invalid_simple_operation
    # skip
    input = '-5'
    assert_equal false, Calculator.new(input).valid_operation
  end

  def test_invalid_long_operation
    # skip
    input = '-5 + 12%3'
    assert_equal false, Calculator.new(input).valid_operation
  end

  def test_valid_simple_operation
    # skip
    input = '5 / 3'
    assert_equal true, Calculator.new(input).valid_operation
  end

  def test_valid_long_opeeration
    # skip
    input = '5 / -3 * 2'
    assert_equal true, Calculator.new(input).valid_operation
  end
end
