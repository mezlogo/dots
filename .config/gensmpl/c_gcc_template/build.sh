#!/bin/env bash

SRC_DIR="${GCC_SRC_DIR:-src}"
DST_DIR="${GCC_DST_DIR:-build}"

[ -d $DST_DIR ] && rm -rf "$DST_DIR"

mkdir "$DST_DIR"

for src in "$SRC_DIR"/*.c; do
  basename="${src##*/}"
  without_ext="${basename%.c}"
  printf "=Compiling: %s\n" "$basename"
  gcc -Wall "$src" -o "$DST_DIR/$without_ext"
done
