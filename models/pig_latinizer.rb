class PigLatinizer

  def piglatinize(phrase)
    vowels = ["a", "e", "i", "o", "u"]
    phrase.split(" ").map do |word|
      if vowels.include? (word[0].downcase)
        word + "way"
      elsif word[0..1].downcase == "th"
        word[2..-1] + word[0..1] + "ay"
      elsif word[0..1].downcase == "pl"
        word[2..-1] + word[0..1] + "ay"
      elsif word[0..2].downcase == "spr"
        word[3..-1] + word[0..2] + "ay"
      elsif word[0..1].downcase == "pr"
        word[2..-1] + word[0..1] + "ay"
      elsif word[0..2].downcase == "str"
        word[3..-1] + word[0..2] + "ay"
      elsif word[0..1].downcase == "wh"
        word[2..-1] + word[0..1] + "ay"
      elsif word[0..1].downcase == "sk"
        word[2..-1] + word[0..1] + "ay"
      else
        word[1..-1] + word[0] + "ay"
      end
    end.join(" ")
  end

  def to_pig_latin(phrase)
    piglatinize(phrase)
  end


end
