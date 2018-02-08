class Encoder
  def encode(string)
    occurences = get_occurences(string)

    result = ''
    occurences.each do |letter|
      result += letter[:count].to_s + letter[:char]
    end

    result
  end

  def get_occurences(string, in_order = [])
    return in_order if string.empty?
    chars = string.chars
    test_char = chars.first
    on_char = test_char
    occurences = ''
    until on_char != test_char
      on_char = chars.shift
      break if on_char != test_char
      occurences += on_char
    end
    in_order.push(char: test_char, count: occurences.length)
    get_occurences(string[occurences.length...string.length], in_order)
  end
end