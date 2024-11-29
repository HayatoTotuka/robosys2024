#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 totuka hayato
# SPDX-License-Identifier: BSD-3-Clause

import re
import sys

text = sys.stdin.read().strip()

new_text = re.sub(r"[^\wぁ-んァ-ン一-龯]", "", text)

japanese_pattern = r"[ぁ-んァ-ン一-龯]"
english_pattern = r"[a-zA-Z]"
number_pattern = r"[0-9]"

japanese_text = re.findall(japanese_pattern, text)
english_text = re.findall(english_pattern, text)
number_text = re.findall(number_pattern, text)

length = len(new_text)
length_japanese = len(japanese_text)
length_english = len(english_text)
length_number = len(number_text)

print("入力された文字数は:",length)
print("入力された日本語の数は: ",length_japanese)
print("入力された英語の数は: ",length_english)
print("入力された数字の数は: ",length_number)
