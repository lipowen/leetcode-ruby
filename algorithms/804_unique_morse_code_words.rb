# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
  morse = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]

  codes = []

  words.each do |word|
    codes << word.codepoints.map { |c| morse[c - 'a'.ord] }.join
  end

  codes.uniq.count
end
