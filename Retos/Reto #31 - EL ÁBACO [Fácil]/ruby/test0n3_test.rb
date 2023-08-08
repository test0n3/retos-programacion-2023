# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './test0n3'

# class test abacus
class AbacusTest < Minitest::Test
  def test_valid_input_thousands
    # skip
    input = ['000---000000',
             '00000---0000',
             '000000---000',
             '---000000000']
    assert_equal '3.560', Abacus.new(input).arabic_number
  end

  def test_valid_input_millions
    # skip
    input = ['O---OOOOOOOO',
             'OOO---OOOOOO',
             '---OOOOOOOOO',
             'OO---OOOOOOO',
             'OOOOOOO---OO',
             'OOOOOOOOO---',
             '---OOOOOOOOO']
    assert_equal '1.302.790', Abacus.new(input).arabic_number
  end

  def test_invalid_input
    # skip
    input = []
    assert_equal 'Invalid input', Abacus.new(input).arabic_number
  end

  def test_invalid_input2
    # skip
    input = ['0--0-0000000',
             '0000000000']
    assert_equal 'Invalid input', Abacus.new(input).arabic_number
  end
end
