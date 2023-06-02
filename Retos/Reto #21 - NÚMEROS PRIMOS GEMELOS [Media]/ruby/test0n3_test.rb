# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './test0n3'

# class to test prime numbers
class TwinPrimesTest < Minitest::Test
  def test_input_is_one
    # skip
    input = 1
    expected = '1 is not valid input'
    assert_equal expected, PrimeNumber.new(input).twin_primes
  end

  def test_input_is_forteen
    # skip
    input = 14
    expected = [[3, 5], [5, 7], [11, 13]]
    assert_equal expected, PrimeNumber.new(input).twin_primes
  end

  def test_input_is_three
    # skip
    input = 3
    expected = []
    assert_equal expected, PrimeNumber.new(input).twin_primes
  end
end
