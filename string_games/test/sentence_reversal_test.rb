require_relative 'test_helper'
require 'pry'
require './lib/sentence_reversal.rb'
class SentenceReversalTest < Minitest::Test

	def setup
		@sentence_reversal = SentenceReversal.new
	end

	def test_does_reverse_text
		assert_equal "cat the", @sentence_reversal.reverse("the cat")
		assert_equal "project a is this", @sentence_reversal.reverse("this is a project")
	end

end
