require_relative 'test_helper'

class SentenceReversalTest < Minitest::Test
	
	def setup
		@string_reversal = StringReversal.new
	end

	def test_does_reverse_text
		assert_equal "cat the", @string_reversal.reverse("the cat")
		assert_equal "project a is this", @string_reversal.reverse("this is a project")"	
	end

end
