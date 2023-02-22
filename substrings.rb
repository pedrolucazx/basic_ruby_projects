def substrings(word, dictionary)
  frequencies = Hash.new(0)
  word.downcase!
  dictionary.each do |substring|
    puts substring
    count = word.scan(substring.downcase).length
    frequencies[substring] += count if count.positive?
  end
  frequencies
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
word = "Howdy partner, sit down! How's it going?"

frequency_count = substrings(word, dictionary)
puts frequency_count
