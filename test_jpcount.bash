#!/bin/bash
# SPDX-FileCopyrightText: 2026 Kai Mochizuki
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目のテスト失敗"
    res=1
}

res=0

out=$(printf '%s\n' '日本語アイabc123' | ./jpcount)
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

out=$(./jpcount </dev/null)
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
