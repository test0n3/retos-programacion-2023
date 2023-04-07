# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require_relative './test0n3'

# class for testing
class TransformToOctalHex < Minitest::Test
  def test_octal_zero
    # skip
    answer = transform_to_octal(0)
    expected = '0'
    assert_equal expected, answer
  end

  def test_octal_not_zero
    # skip
    answer = transform_to_octal(16)
    expected = '20'
    assert_equal expected, answer
  end

  def test_hex_zero
    # skip
    answer = transform_to_hex(0)
    expected = '0'
    assert_equal expected, answer
  end

  def test_hex_fifteen
    # skip
    answer = transform_to_hex(15)
    expected = 'F'
    assert_equal expected, answer
  end

  def test_hex_not_zero
    # skip
    answer = transform_to_hex(16)
    expected = '10'
    assert_equal expected, answer
  end

  def test_octal_hex
    # skip
    answer = transform_to_octal_hex(16)
    expected = JSON.generate({ octal: '20', hex: '10' })
    assert_equal JSON.generate(answer), expected
  end

  def test_octal_hex_zero
    answer = transform_to_octal_hex(0)
    expected = JSON.generate({ octal: '0', hex: '0' })
    assert_equal JSON.generate(answer), expected
  end
end
