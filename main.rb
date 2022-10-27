messageWords = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...".split("   ")
dictionary = {
  ".-" => "a",
  "-..." => "b",
  "-.-." => "c",
  "-.." => "d",
  "." => "e",
  "..-." => "f",
  "--." => "g",
  "...." => "h",
  ".." => "i",
  ".---" => "j",
  "-.-" => "k",
  ".-.." => "l",
  "--" => "m",
  "-." => "n",
  "---" => "o",
  ".--." => "p",
  "--.-" => "q",
  ".-." => "r",
  "..." => "s",
  "-" => "t",
  "..-" => "u",
  "...-" => "v",
  ".--" => "w",
  "-..-" => "x",
  "-.--" => "y",
  "--.." => "z",
}
decoded =
messageWords.map do |word|
  word.split(" ").map do |letter|
    dictionary[letter]
  end.join
end
print(decoded)



def decodeMorse(message, dictionary)
  message.map { |word| word.split(" ").map { |letter| dictionary[letter] }.join }.join(" ")
end
puts decodeMorse(messageWords, dictionary)
