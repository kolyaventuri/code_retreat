class Palindrome

  def check(word)
    word.delete!(' ')
    return true if palindrome?(word).instance_of?(Integer)
    false
  end

  def palindrome?(word)
    (word.length / 2 + 1).times do |index|
      return false if word[index] != word[-1 - index]
    end
  end
end
