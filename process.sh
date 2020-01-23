for f in ./json/*.json; do
  filename=${f##*/}
  album=${filename%.json}
  videos=`jq ".video[0] | length" $f`
  while [ $videos -gt 0 ]
  do
    videos=$[$videos-1]
    url=`jq ".video[0][$videos].url" $f --raw-output`
    platform=`jq ".video[0][$videos].platform" $f --raw-output`
    echo "Hey $url ($platform)"
    if [ $platform = "vimeo" ]
    then
      youtube-dl https://player.vimeo.com/video/$url --referer "https://radiohead.com" -f best -o "./video/$album/%(title)s.%(ext)s" --verbose
    elif [ $platform = "youtube" ]
    then
      youtube-dl https://www.youtube.com/watch?v=$url --referer "https://radiohead.com" -f best -o "./video/$album/%(title)s.%(ext)s" --verbose
    fi
  done
done
