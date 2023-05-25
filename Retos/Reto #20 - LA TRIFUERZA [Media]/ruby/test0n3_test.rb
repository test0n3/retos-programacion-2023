# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './test0n3'

# class to test the triforce
class TriForceTest < Minitest::Test
  def test_triangles_zero
    skip
    input = 0
    expected = ''
    assert_equal expected, TriForce.new(input).draw_triangles
  end

  def test_triangles_two
    skip
    input = 2
    expected = "   *   \n  *** \n *   *   \n*** *** \n"
    assert_equal expected, TriForce.new(input).draw_triangles
  end

  def test_triangles_five
    skip
    input = 5
    expected = "         *   \n        *** \n       *   *   \n      *** *** \n     *   *   *   \n    *** *** *** \n   *   *   *   *   \n  *** *** *** *** \n *   *   *   *   *   \n*** *** *** *** *** \n"
    assert_equal expected, TriForce.new(input).draw_triangles
  end

  def test_triforce_zero
    # skip
    input = 0
    expected = ''
    assert_equal expected, TriForce.new(input).draw_triforce
  end

  def test_triforce_two
    # skip
    input = 2
    expected = "   *\n  ***\n *   *\n*** ***\n"
    assert_equal expected, TriForce.new(input).draw_triforce
  end

  def test_triforce_five
    # skip
    input = 5
    expected = "         *\n        ***\n       *****\n      *******\n     *********\n    *         *\n   ***       ***\n  *****     *****\n *******   *******\n********* *********\n"
    assert_equal expected, TriForce.new(input).draw_triforce
  end
end
