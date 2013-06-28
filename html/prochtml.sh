#/bin/bash
# Process html files, add header/footer to content
cd content;
for i in *.html; do
	echo $i;
	cat ../head.html $i ../tail.html > ../html/$i
done;
