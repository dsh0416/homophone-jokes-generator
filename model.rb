require 'ohm'

class Pinyin < Ohm::Model
  attribute :phrase
  attribute :pinyin
  attribute :pinyin_t # Tone Insensitive

  index :phrase
  index :pinyin
  index :pinyin_t
end

def convert_pinyin_t(pinyin)
  result = pinyin.clone
  result.gsub!('ā', 'a')
  result.gsub!('á', 'a')
  result.gsub!('ǎ', 'a')
  result.gsub!('à', 'a')

  result.gsub!('ō', 'o')
  result.gsub!('ó', 'o')
  result.gsub!('ǒ', 'o')
  result.gsub!('ò', 'o')

  result.gsub!('ē', 'e')
  result.gsub!('é', 'e')
  result.gsub!('ě', 'e')
  result.gsub!('è', 'e')

  result.gsub!('ī', 'i')
  result.gsub!('í', 'i')
  result.gsub!('ǐ', 'i')
  result.gsub!('ì', 'i')

  result.gsub!('ū', 'u')
  result.gsub!('ú', 'u')
  result.gsub!('ǔ', 'u')
  result.gsub!('ù', 'u')

  result.gsub!('ü', 'ü')
  result.gsub!('ǘ', 'ü')
  result.gsub!('ǚ', 'ü')
  result.gsub!('ǜ', 'ü')

  result
end
