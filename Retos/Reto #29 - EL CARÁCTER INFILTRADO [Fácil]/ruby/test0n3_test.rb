# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './test0n3'

# class SentenceTest for valid operation
class SentenceTest < Minitest::Test
  def test_different_length_sentences
    # skip
    input = ['first sentence', 'second sentence']
    assert_equal Sentence.new(*input).find_diff, false
  end

  def test_same_sentences
    # skip
    input = ['first sentence', 'first sentence']
    assert_equal Sentence.new(*input).find_diff, []
  end

  def test_one_difference_sentences
    # skip
    input = ['first sentence', 'f1rst sentence']
    assert_equal Sentence.new(*input).find_diff, ['1']
  end

  def test_many_difference_sentences
    # skip
    input = ['first  sentence', 'second sentence']
    assert_equal Sentence.new(*input).find_diff, %w[s e c o n d]
  end
end
