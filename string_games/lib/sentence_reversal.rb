class SentenceReversal
  def reverse(sentence, result = '')
    return result if sentence.length.zero?
    word = ''
    sentence.each_char do |letter|
      word += letter
      break if letter == ' '
    end

    word = ' ' + word[0...(word.length - 1)] if word[-1] == ' '

    result = word + result
    reverse(sentence[(word.length)...(sentence.length)], result)
  end
end
