#! /bin/bash

#shamelessly stolen from retronym.github.com

for i in $(find repo -type d); do
   (cd $i; pwd; ~/work/jbrechtel.github.com/update-index.sh > index.html)
done
