# jpcount

![Tests](https://github.com/s25c1111tc-del/robosys2026/actions/workflows/test.yml/badge.svg)

文章から空白と改行を除いた文字数と、文字種ごとの内訳を確認するコマンドです。

## インストール

```console
$ git clone https://github.com/s25c1111tc-del/robosys2026.git
$ cd robosys2026
```

## 使い方

```console
$ printf '日本語アイabc123\n' | ./jpcount
Non-space characters: 11
Kanji: 3
Hiragana: 0
Katakana: 2
Alphabet: 3
Digits: 3
Other: 0
```

## 必要なソフトウェア

- Ubuntu 24.04 LTS
- Python 3.10〜3.14 -Git
- 外部ライブラリは不要です

## テスト

```console
$ bash -xv ./test_jpcount.bash
```

GitHub Actionsでは、Ubuntu 24.04 LTS上でPython 3.10〜3.14のテストを実行します。

## 著作権・ライセンス

Copyright 2026 Kai Mochizuki

BSD-3-Clauseライセンスで公開しています。詳細は [LICENSE](LICENSE) を参照してください。
