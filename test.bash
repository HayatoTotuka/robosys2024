#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 totuka hayato
# SPDX-License-Identifier: BSD-3-Clause


ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"



out=$(echo 123おはようhello | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された文字数は: 12"* ]]
out=$(echo 123おはようhello | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された日本語の数は: 4"* ]]
out=$(echo 123おはようhello | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された英語の数は: 5"* ]]
out=$(echo 123おはようhello | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された数字の数は: 3"* ]]

out=$(echo | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された文字数は: 0"* ]]
out=$(echo | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された日本語の数は: 0"* ]]
out=$(echo | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された英語の数は: 0"* ]]
out=$(echo | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された数字の数は: 0"* ]]

out=$(echo おはようhello | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された文字数は: 9"* ]]
out=$(echo おはようhello | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された日本語の数は: 4"* ]]
out=$(echo おはようhello | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された英語の数は: 5"* ]]
out=$(echo おはようhello | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された数字の数は: 0"* ]]

out=$(echo 123hello | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された文字数は: 8"* ]]
out=$(echo 123hello | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された日本語の数は: 0"* ]]
out=$(echo 123hello | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された英語の数は: 5"* ]]
out=$(echo 123hello | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された数字の数は: 3"* ]]

out=$(echo 123おはよう | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された文字数は: 7"* ]]
out=$(echo 123おはよう | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された日本語の数は: 4"* ]]
out=$(echo 123おはよう | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された英語の数は: 0"* ]]
out=$(echo 123おはよう | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された数字の数は: 3"* ]]

out=$(echo 123 | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された文字数は: 3"* ]]
out=$(echo 123 | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された日本語の数は: 0"* ]]
out=$(echo 123 | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された英語の数は: 0"* ]]
out=$(echo 123 | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された数字の数は: 3"* ]]

out=$(echo おはよう | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された文字数は: 4"* ]]
out=$(echo おはよう | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された日本語の数は: 4"* ]]
out=$(echo おはよう | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された英語の数は: 0"* ]]
out=$(echo おはよう | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された数字の数は: 0"* ]]

out=$(echo hello | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された文字数は: 5"* ]]
out=$(echo hello | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された日本語の数は: 0"* ]]
out=$(echo hello | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された英語の数は: 5"* ]]
out=$(echo hello | ./word_count.py)
[ "$?" = 0 ] || ng "$LINENO"
[[ "$out" == *"入力された数字の数は: 0"* ]]



[ "${res}" = 0 ] && echo OK 

exit $res
