require 'jieba_rb'
require './model'

if ARGV.length != 2
  puts "Usage: ruby create.rb [sentence] [tone-sensitive: true/false]"
  exit
end

sentence = ARGV[0]
tone_sensitive = (ARGV[1] == 'true')

seg = JiebaRb::Segment.new
words = seg.cut sentence

words.each_with_index do |word, i|
  next if word.length < 2 # Homophone of single character in Chinese is too common
  phrases = Pinyin.find(phrase: word)
  phrases.each do |phrase|
    if tone_sensitive
      candidates = Pinyin.find(pinyin: phrase.pinyin).map { |c| c.phrase }
    else
      pinyin_t = convert_pinyin_t(phrase.pinyin)
      candidates = Pinyin.find(pinyin_t: pinyin_t).map { |c| c.phrase }
    end

    candidates -= [phrase.phrase] # Remove the phrase itself
    candidates.each do |candidate|
      prefix = words[0...i].join
      suffix = words[i+1..-1].join
      puts "#{prefix}#{candidate}#{suffix}"
    end
  end
end
