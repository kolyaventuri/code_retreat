require_relative 'test_helper.rb'

require './lib/encoder.rb'
require 'pry'

class EncoderTest < Minitest::Test
  def setup
    @encoder = Encoder.new
  end

  def test_can_encode_string
    assert_equal '4a5b6c', @encoder.encode('aaaabbbbbcccccc')
    #assert_equal 'ab3c3a', @encoder.encode('abcccaaa')
  end

  def test_can_decode_string
    skip
    assert_equal 'aaaabbbbbcccccc', @encoder.decode('4a5b6c')
    assert_equal 'abcccaaa', @encoder.decode('ab3c3a')
  end
end