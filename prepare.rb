require './model'

# Import Dictionary
f = File.read('./dataset/large_pinyin.txt')
lines = f.split("\n")
lines.each do |line|
  phrase, pinyin = line.chomp.split(': ')
  pinyin_t = convert_pinyin_t(pinyin)
  Pinyin.create(phrase: phrase, pinyin: pinyin, pinyin_t: pinyin_t)
end
