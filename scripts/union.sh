#!/bin/bash

linebreak='<div style="page-break-after: always; break-after: page;"></div>'
output="./answer/answers.md"

if [[ -f $output ]]; then
    rm $output
fi

for file in `ls -v ./answer`; do
    if [[ -d "./answer/$file" ]]; then
        continue
    fi

    if [[ $file == "README.md" ]]; then
        continue
    fi

    echo "[+] Processing $file"

    cat "./answer/$file" >> $output

    echo -en '\n' >> $output
    # echo $linebreak >> $output
    # echo -en '\n' >> $output
done