messageWords = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...".split("   ")
$dictionary = {
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

def decodeLetter(letters)
  $dictionary[letters].upcase
end

def decodeWord(word)
  word.split(" ").map { |letter| decodeLetter(letter) }.join
end

def decodePhrase(message)
  message.map { |word| decodeWord(word) }.join(" ")
end

puts decodePhrase(messageWords)
