#/bin/bash
# Process a list of markdown files into html appending a header and a footer. 

# Check if directory exists.
if [ -d html ]; then true; else mkdir html; fi

echo "Processing:"
for i in *.md;
do
  echo -e "\t$i";
  markdown/./markdown.pl $i > tmp.html;
  NEWNAME=`ls -1 $i | awk 'BEGIN{ FS="." } { print $1 }'`;
  cat head.html tmp.html tail.html > html/$NEWNAME.html;
  rm tmp.html;
done
