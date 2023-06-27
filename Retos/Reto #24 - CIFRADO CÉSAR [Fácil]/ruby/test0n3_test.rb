# frozen_string_literal: true

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './test0n3'

# class to test Caesar Cypher
class CaesarCipherTest < Minitest::Test
  def test_cipher_text
    # skip
    input = { text: 'The quick brown fox jumps over the lazy dog.', action: 'cipher' }
    expected = 'Wkh txlfn eurzp ira mxosv ryhu wkh ñdcb grj.'
    assert_equal expected, CaesarCipher.new(input).act
  end

  def test_decipher_text
    # skip
    input = { text: 'Wkh txlfn eurzp ira mxosv ryhu wkh ñdcb grj.', action: 'decipher' }
    expected = 'The quick brown fox jumps over the lazy dog.'
    assert_equal expected, CaesarCipher.new(input).act
  end

  def test_cipher_unfamiliar_text
    # skip
    input = { text: 'Aquí va más texto.', action: 'cipher' }
    expected = 'Dtxí yd oáv whawr.'
    assert_equal expected, CaesarCipher.new(input).act
  end

  def test_decipher_unfamiliar_text
    # skip
    input = { text: 'Dtxí yd oáv whawr.', action: 'decipher' }
    expected = 'Aquí va más texto.'
    assert_equal expected, CaesarCipher.new(input).act
  end

  def test_cipher_empty_input
    # skip
    expected = 'input missing'
    assert_equal expected, CaesarCipher.new.act
  end
end
