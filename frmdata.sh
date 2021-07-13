#!/bin/bash
frmdata=$(yad --title "Create Directory" --form --width 300 --height 300 \
  --field="Path" \
  --field="Directory Name" \
  --field="Group Owner" \
  --field="Change Owner" \
  --directory \
)
frmPath=$(echo $frmdata | awk 'BEGIN {FS="|"}{ print $1}')
frmDirName=$(echo $frmdata | awk 'BEGIN {FS="|"}{ print $2}')
frmGroup=$(echo $frmdata | awk 'BEGIN {FS="|"}{ print $3}')
frmChgOwn=$(echo $frmdata | awk 'BEGIN {FS="|"}{ print $4}')

mkdir -p $frmPath$frmDirName

set -x
if [ -z "$frmGroup" ]; then
  echo "Group Empty"
elif [ -n "$frmGroup" ]; then
  chgrp $frmGroup $frmPath$frmDirName
fi

if [ -z "$frmGroup" ]; then
  echo "Change Owner Empty"
elif [ -n "$frmChgOwn" ]; then
  chown $frmChgOwn $frmPath$frmDirName
fi


