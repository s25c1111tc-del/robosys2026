#!/bin/bash
# SPDX-FileCopyrightText: 2026 Kai Mochizuki
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目のテスト失敗"
    res=1
}

res=0

### NORMAL INPUT ###
out=$(printf '%s\n' '日本語アイabc123' | ./jpcount)
[ "$?" = 0 ] || ng "$LINENO"
expected=$(cat <<'EXPECTED'
Non-space characters: 11
Kanji: 3
Hiragana: 0
Katakana: 2
Alphabet: 3
Digits: 3
Other: 0
EXPECTED
)
[ "$out" = "$expected" ] || ng "$LINENO"

### HIRAGANA, SPACE, AND OTHER CHARACTER ###
out=$(printf '%s\n' 'あ !' | ./jpcount)
[ "$?" = 0 ] || ng "$LINENO"
expected=$(cat <<'EXPECTED'
Non-space characters: 2
Kanji: 0
Hiragana: 1
Katakana: 0
Alphabet: 0
Digits: 0
Other: 1
EXPECTED
)
[ "$out" = "$expected" ] || ng "$LINENO"

### EMPTY INPUT ###
out=$(./jpcount </dev/null)
[ "$?" = 0 ] || ng "$LINENO"
expected=$(cat <<'EXPECTED'
Non-space characters: 0
Kanji: 0
Hiragana: 0
Katakana: 0
Alphabet: 0
Digits: 0
Other: 0
EXPECTED
)
[ "$out" = "$expected" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit "$res"
