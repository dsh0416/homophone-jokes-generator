# homophone-jokes-generator
Generate homophone jokes with trivial NLP techniques. 谐音笑话生成

## Requirements

- Ruby (>= 2.7)
- Redis

## Principles

创作笑话最简单的类型是 one-liner。one-line joke 的基本构成类型是使观众听众建立一个对故事的预设，然后摧毁它，从而营造喜剧需要的反差。而 one-liner 让建立的预期和摧毁发生在同一个句子的前后，从而制造非常紧凑的喜剧效果。例如：

> 世界上有 10 种人，一种懂二进制，另一种不懂。

其前半句「世界上有 10 种人」没有对进制进行提示，从而让人产生一个十进制下 10 数字的预期。而后半句将 10 理解成二进制，并将二进制这一关键词构建在后半句中，形成一个 punchline。

谐音笑话是构造 one liner 最简单的一种方式。本工具受启发于歌词创作中的押韵字典，通过对字典的拼音进行索引。在给定句子后，程序会使用 `jieba` 分词，尝试寻找给定句子的可能谐音，进一步启发、辅助喜剧的创作。

## Usage

Install dependencies of Ruby
```
> bundle install
```

Run once if you don't have data prepared in your Redis.
```
> ruby prepare.rb
```

For creation,
```
> ruby create.rb
Usage: ruby create.rb [sentence] [tone-sensitive: true/false]

> ruby create.rb 我笑话水平很差 false
我宵话水平很差
我小话水平很差
我枭猾水平很差
我校花水平很差
我消化水平很差
我消花水平很差
我硝化水平很差
我笑哗水平很差
我肖化水平很差
我销化水平很差
我骁猾水平很差
我笑话水屏很差
我笑话水瓶很差
我笑话水苹很差

```

我笑话水平很差，经常胃痛。

```
> ruby create.rb "很多公司开会讲究发言顺序" true
很多公私开会讲究发言顺序
很多功缌开会讲究发言顺序
很多宫司开会讲究发言顺序
很多公司开晦讲究发言顺序
很多公司开会讲究发严顺序
很多公司开会讲究发炎顺序
很多公司开会讲究发颜顺序
很多公司开会讲究发言顺叙
很多公司开会讲究发言顺绪
很多公司开会讲究发言顺续
```

很多公司开会讲究发言顺序，毕竟大家一起发炎的话，就没人来上班了。
