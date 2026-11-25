# robosys2026

Linux上で使えるPythonコマンドを公開するリポジトリです。

![Tests](https://github.com/s25c1111tc-del/robosys2026/actions/workflows/test.yml/badge.svg)

## コマンド

### plus

標準入力から数値を読み込み、合計を標準出力に表示します。例: `seq 5 | ./plus` の出力は `15` です。

### jpcount

標準入力から文章を読み、空白と改行を除いた文字数、および文字種ごとの内訳を表示します。日本語レポートの文字数確認に使えます。

例: `cat report.txt | ./jpcount`

`printf '日本語アイabc123\n' | ./jpcount` の出力例:

    Non-space characters: 11
    Kanji: 3
    Hiragana: 0
    Katakana: 2
    Alphabet: 3
    Digits: 3
    Other: 0

## 必要なソフトウェア

- Ubuntu 24.04 LTS
- Python 3.10〜3.14
- 外部ライブラリは不要です

## テスト

- `bash -xv ./test.bash`
- `bash -xv ./test_jpcount.bash`

GitHub Actionsはpushのたびに、Python 3.10〜3.14で両方のテストを実行します。

## 著作権・ライセンス

Copyright 2026 Kai Mochizuki

このリポジトリのソフトウェアはBSD-3-Clauseライセンスで公開します。詳細は [LICENSE](LICENSE) を参照してください。
