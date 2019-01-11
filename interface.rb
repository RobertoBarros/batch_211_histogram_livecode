require_relative "./frequencies"
text = File.read("piadas.txt")

text.downcase!

text.gsub!(/[\.,!:]/,'')

result = frequencies(text)
result = result.select{ |key, value| key.length > 4}
               .sort_by { |key, value| value }
               .reverse
               .first(20)

result.each do |key, value|
  puts "A palavra #{key} aparece #{value} vezes."
end

