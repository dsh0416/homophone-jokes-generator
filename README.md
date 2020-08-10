# homophone-jokes-generator
Generate homophone jokes with trivial NLP techniques. 谐音笑话生成

## Requirements

- Redis

## Usage

Run once if you don't have data prepared in your Redis.
```
> ruby prepare.rb
```

For creation
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

我笑话水平很差，经常胃痛。
很多公司开会讲究发言顺序，毕竟大家一起发炎的话，就没人来上班了。
