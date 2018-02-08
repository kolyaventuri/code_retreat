class Palindrome

  def check(word)
    word.gsub!(" ", "")
    (word.length/2+1).times do |index|
      return false if word[index] != word[-1 - index]
    end
    true
  end
end
