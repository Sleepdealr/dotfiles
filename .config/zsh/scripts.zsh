
commpress() {
  if ([ ! -f "$1" ] && [ "$1" -ne '-']);   then
    echo 'Usage: compress <in_file> <out_file> [scale division]'
    return 1
  fi

  in_file="$1"
  out_file="$2"
  scale="${3:-1}"

  ffmpeg -i "$in_file" \
          -c:v libx264 -c:a aac \
          -vf scale=iw/"$scale":-1 \
          -crf 32 \
          -preset faster \
          "$out_file"
}

to_gif() {
  if [ $# -lt 2 ] || [ $# -gt 3 ] || ([ ! -f "$1" ] && [ "$1" -ne "-"]); then
    echo 'Usage: to_gif <in_file> <out_file> [fps]'
    return 1
  fi

  if [ $1 -eq "-"]; then
    in_file="pipe:"
  else
    in_file="$1"
  fi

  out_file="$2"
  if [ $# -eq 3 ]; then
    fps=$3
  else
    fps=30
  fi

  ffmpeg -i "$in_file" \
    -vf "fps=$fps,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" \
    -loop 0 \
    "$out_file"
}
