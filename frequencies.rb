def frequencies(text)

  words = text.split(" ")
  histogram = {}
  words.each do |word|
    if histogram.key?(word)
      histogram[word] += 1
    else
      histogram[word] = 1
    end
  end
  return histogram
end