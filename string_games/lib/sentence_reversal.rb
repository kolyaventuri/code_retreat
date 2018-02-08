class SentenceReversal
  def reverse(sentence, result = '')
    word = ''
    sentence.each_char do |letter|
      break if letter == ' '
      word += letter
    end
    binding.pry
  end
end
