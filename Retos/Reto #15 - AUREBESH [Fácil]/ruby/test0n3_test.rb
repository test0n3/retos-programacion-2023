# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './test0n3'

# testing methods for Aurebesh translator
class AurebeshTest < Minitest::Test
  def test_to_aurebesh_empty
    # skip
    input = ''
    expected = ''
    output = to_aurebesh(input)
    assert_equal expected, output
  end

  def test_from_aurebesh_empty
    # skip
    input = ''
    expected = ''
    output = from_aurebesh(input)
    assert_equal expected, output
  end

  def test_to_aurebesh_not_available
    # skip
    input = 'ñb á, é.'
    expected = 'ñbesh á, é.'
    output = to_aurebesh(input)
    assert_equal expected, output
  end

  def test_from_aurebesh_not_available
    # skip
    input = 'ábesh ñ, é.'
    expected = 'áb ñ, é.'
    output = from_aurebesh(input)
    assert_equal expected, output
  end

  def test_to_aurebesh_english
    # skip
    input = 'first'
    expected = 'forniskreshsenthtrill'
    output = to_aurebesh(input)
    assert_equal expected, output
  end

  def test_from_aurebesh_english
    # skip
    input = 'forniskreshsenthtrill'
    expected = 'first'
    output = from_aurebesh(input)
    assert_equal expected, output
  end

  def test_to_aurebesh_sentence_english
    # skip
    input = 'here we are, going to test some text.'
    expected = "herfeskreshesk weskesk aurekreshesk, \
grekoskisknen trillosk trillesksenthtrill senthoskmernesk trilleskxeshtrill."
    output = to_aurebesh(input)
    assert_equal expected, output
  end

  def test_from_aurebesh_sentence_english
    # skip
    input = "herfeskreshesk weskesk aurekreshesk, \
grekoskisknen trillosk trillesksenthtrill senthoskmernesk trilleskxeshtrill."
    expected = 'here we are, going to test some text.'
    output = from_aurebesh(input)
    assert_equal expected, output
  end

  def test_from_aurebesh_wrong_input
    # skip
    input = 'some text'
    expected = 'some text'
    output = from_aurebesh(input)
    assert_equal expected, output
  end
end
