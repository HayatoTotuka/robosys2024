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



out=$(echo 123おはようhello | ./kadai1.py)
[[ "$out" == *"入力された文字数は: 12"* ]]
out=$(echo 123おはようhello | ./kadai1.py)
[[ "$out" == *"入力された日本語の数は: 4"* ]]
out=$(echo 123おはようhello | ./kadai1.py)
[[ "$out" == *"入力された英語の数は: 5"* ]]
out=$(echo 123おはようhello | ./kadai1.py)
[[ "$out" == *"入力された数字の数は: 3"* ]]

out=$(echo | ./kadai1.py)
[[ "$out" == *"入力された文字数は: 0"* ]]
out=$(echo | ./kadai1.py)
[[ "$out" == *"入力された日本語の数は: 0"* ]]
out=$(echo | ./kadai1.py)
[[ "$out" == *"入力された英語の数は: 0"* ]]
out=$(echo | ./kadai1.py)
[[ "$out" == *"入力された数字の数は: 0"* ]]

out=$(echo おはようhello | ./kadai1.py)
[[ "$out" == *"入力された文字数は: 9"* ]]
out=$(echo おはようhello | ./kadai1.py)
[[ "$out" == *"入力された日本語の数は: 4"* ]]
out=$(echo おはようhello | ./kadai1.py)
[[ "$out" == *"入力された英語の数は: 5"* ]]
out=$(echo おはようhello | ./kadai1.py)
[[ "$out" == *"入力された数字の数は: 0"* ]]

out=$(echo 123hello | ./kadai1.py)
[[ "$out" == *"入力された文字数は: 8"* ]]
out=$(echo 123hello | ./kadai1.py)
[[ "$out" == *"入力された日本語の数は: 0"* ]]
out=$(echo 123hello | ./kadai1.py)
[[ "$out" == *"入力された英語の数は: 5"* ]]
out=$(echo 123hello | ./kadai1.py)
[[ "$out" == *"入力された数字の数は: 3"* ]]

out=$(echo 123おはよう | ./kadai1.py)
[[ "$out" == *"入力された文字数は: 7"* ]]
out=$(echo 123おはよう | ./kadai1.py)
[[ "$out" == *"入力された日本語の数は: 4"* ]]
out=$(echo 123おはよう | ./kadai1.py)
[[ "$out" == *"入力された英語の数は: 0"* ]]
out=$(echo 123おはよう | ./kadai1.py)
[[ "$out" == *"入力された数字の数は: 3"* ]]

out=$(echo 123 | ./kadai1.py)
[[ "$out" == *"入力された文字数は: 3"* ]]
out=$(echo 123 | ./kadai1.py)
[[ "$out" == *"入力された日本語の数は: 0"* ]]
out=$(echo 123 | ./kadai1.py)
[[ "$out" == *"入力された英語の数は: 0"* ]]
out=$(echo 123 | ./kadai1.py)
[[ "$out" == *"入力された数字の数は: 3"* ]]

out=$(echo おはよう | ./kadai1.py)
[[ "$out" == *"入力された文字数は: 4"* ]]
out=$(echo おはよう | ./kadai1.py)
[[ "$out" == *"入力された日本語の数は: 4"* ]]
out=$(echo おはよう | ./kadai1.py)
[[ "$out" == *"入力された英語の数は: "* ]]
out=$(echo おはよう | ./kadai1.py)
[[ "$out" == *"入力された数字の数は: "* ]]

out=$(echo hello | ./kadai1.py)
[[ "$out" == *"入力された文字数は: 5"* ]]
out=$(echo hello | ./kadai1.py)
[[ "$out" == *"入力された日本語の数は: 0"* ]]
out=$(echo hello | ./kadai1.py)
[[ "$out" == *"入力された英語の数は: 5"* ]]
out=$(echo hello | ./kadai1.py)
[[ "$out" == *"入力された数字の数は: 0"* ]]


[ "${res}" = 0 ] && echo OK 

exit $res
