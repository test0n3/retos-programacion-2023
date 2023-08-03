# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './test0n3'

# class CellphoneDialTest to validate operations
class CellphoneDialTest < Minitest::Test
  def test_valid_input
    # skip
    input = '6-666-88-777-33-3-33-888'
    assert_equal CellphoneDial.new(input).translated, 'MOUREDEV'
  end

  def test_input_with_spaces
    # skip
    input = '8-444-6-33-0-8-666-0-7777-555-33-33-7'
    assert_equal CellphoneDial.new(input).translated, 'TIME TO SLEEP'
  end

  def test_input_with_numbers
    # skip
    input = '6-999-0-66-88-6-22-33-777-0-444-7777-0-99999-4444-77777-0-4444-2222-2222-0-3333-2222-4444'
    assert_equal CellphoneDial.new(input).translated, 'MY NUMBER IS 947 422 324'
  end

  def test_input_long_input
    # skip
    input = '6-99999999-0-8-33-777777777-8'
    assert_equal CellphoneDial.new(input).translated, 'MY TEST'
  end
end
