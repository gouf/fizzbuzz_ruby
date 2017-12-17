# FizzBuzz とは

> プレイヤーは円状に座る。最初のプレイヤーは「1」と数字を発言する。次のプレイヤーは直前のプレイヤーの次の数字を発言していく。ただし、3で割り切れる場合は「Fizz」（Bizz Buzzの場合は「Bizz」）、5で割り切れる場合は「Buzz」、両者で割り切れる場合（すなわち15で割り切れる場合）は「Fizz Buzz」（Bizz Buzzの場合は「Bizz Buzz」）を数の代わりに発言しなければならない。発言を間違えた者や、ためらった者は脱落となる。

[Fizz Buzz - Wikipedia](https://ja.wikipedia.org/wiki/Fizz_Buzz)

これをプログラムとして、1 から100 までの数値を処理してみよう

# ディレクトリ・ファイル構成

```
.
├── Gemfile
├── Gemfile.lock
├── Guardfile
├── LICENSE
├── README.md
├── lib
│   └── fizzbuzz.rb
├── spec
│   ├── fizzbuzz_spec.rb
│   └── spec_helper.rb
└── tmp

3 directories, 8 files
```

# 準備

## Ruby のバージョン

2.4.0 以上であること

### バージョンの確認

```shell
ruby -v # => ruby 2.4.2
```

## Gem のインストール

```shell
bundle install
```

# テストの実行

RSpec によるテストを試しに実行して、動作を確認する

```shell
rpsec
```

## Guard による継続実行

Guard, Guard RSpec で、テストを継続的に実行する

```shell
guard
```

ファイルの変更を検知して、RSpec を自動実行してくれる
(`Guardfile` に設定が記述されている)

# 実装

テストにパスするように、`lib/fizzbuzz.rb` にある、`FizzBuzz` クラスの中身を実装していく
