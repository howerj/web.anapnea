#/bin/bash
LIST=`find -name "*.html"`;
FILE=sitemap.xml
WEBSITE="http://work.anapnea.net"
rm -f $FILE;

echo '<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">' >> $FILE


for i in $LIST; do
  FILE_DATE=`stat -c='%y' $i | cut -c 1 --complement | cut -d ' ' -f 1`;
  echo "  <url>" >> $FILE
  echo "    <loc>$WEBSITE/`echo $i | cut --complement -c 1,2`</loc>" >> $FILE
  echo "    <lastmod>$FILE_DATE</lastmod>" >> $FILE
  echo "    <changefreq>monthly</changefreq>" >> $FILE
  echo "    <priority>1.0</priority>" >> $FILE
  echo "  </url>" >> $FILE
  echo "$i $FILE_DATE";
done

echo "</urlset>" >> $FILE
