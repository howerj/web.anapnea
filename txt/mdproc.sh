#/bin/bash
# Process a list of markdown files into html appending a header and a footer. 
# Also handles the RSS feed


# Check if directory exists.
if [ -d html ]; then true; else mkdir html; fi

RSS_SITE="http://work.anapnea.net";
RSS_HEAD="blog.head.rss.xml"
RSS_TAIL="blog.tail.rss.xml"
RSS_FEED="blog.rss.xml"

rm -f $RSS_FEED;
cat $RSS_HEAD >> $RSS_FEED;

echo "Processing:"
for i in *.md;
do
  echo -e "\t$i";

  # Markdown
  markdown/./markdown.pl $i > tmp.html;
  NEWNAME=`ls -1 $i | awk 'BEGIN{ FS="." } { print $1 }'`;
  cat head.html tmp.html tail.html > html/$NEWNAME.html;
  rm tmp.html;

  # RSS
  echo "<item>" >> $RSS_FEED;
  echo "  <title>$NEWNAME</title>" >> $RSS_FEED;
  echo "  <link>$RSS_SITE/txt/html/$NEWNAME.html</link>" >> $RSS_FEED;
  echo "  <guid>$RSS_SITE/txt/html/$NEWNAME.html</guid>" >> $RSS_FEED;
  echo "  <description>(`stat -c='%y' $NEWNAME.md`)" >> $RSS_FEED;
  echo "  `head -n 5 $NEWNAME.md`" >> $RSS_FEED;
  echo "  ...</description>" >> $RSS_FEED;
  echo "</item>" >> $RSS_FEED;
  # End RSS 

done

cat $RSS_TAIL >> $RSS_FEED;
