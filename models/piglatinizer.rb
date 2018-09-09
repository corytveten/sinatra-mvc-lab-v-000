
class PigLatinizer

  def piglatinize (text)
    words = text.split(" ")
    piglatin_words = []
    words.each{|word| piglatin_words << piglatinze_word(word)}
    piglatin_words.join(" ")
  end

  def piglatinize_word(word)
    letters = word.split('')
    piglatin_word = word
    if vowel?(letters.first)
      piglatin_word << "way"
    else
      consonants = letters[0]
      letters.delete_at(0)
      until vowel?(letters[0])
        consonants << letters[0]
        letters.delete_at(0)
      end
      piglatin_word = letters.join
      piglatin_word << consonants
      piglatin_word << "ay"
    end
    piglatin_word
end
