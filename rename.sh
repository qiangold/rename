find . -mindepth 1 -name "*.bin" -print0 | while IFS= read -r -d $'\0' file; do
  newfile=$(echo "$file" | sed 's/\.bin$/.jpg/')
  mv "$file" "$newfile"
  echo "Renamed: $file -> $newfile"
done

