require_relative 'test_helper.rb'

require './lib/palindrome.rb'

class PalindromeTest < Minitest::Test

  def setup
    @palindrome = Palindrome.new
  end

  def test_tests_is_palindrome
    assert_equal true, @palindrome.check('racecar')
    assert_equal true, @palindrome.check('murder for a jar of redrum')
    assert_equal false, @palindrome.check('i wanna be a palindrome too :(')
  end

end