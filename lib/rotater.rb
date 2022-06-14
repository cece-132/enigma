class Rotater
 attr_reader :alpha
 def initialize
  @alpha = ("a".."z").to_a << " "
 end

 def message(text)
  text.chars.map {|character| character.chr}
 end

 def rotate_array(text)
  message(text).map {|character| (character.ord + 3).chr}.join
 end

 def revert_array_to_english(text)
  rotate_array(text).chars.map {|character| (character.ord - 6).chr}.join
 end

end