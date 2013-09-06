#!/usr/bin/perl
# Perl Replacement file for rss.sh, TODO
use warnings;
use strict;

my $dir = ".";

unlink "tmp.1.txt", "tmp.2.txt";

opendir(DIR,"$dir") || die ("Can't open $dir: $!\n");
my @dir_list = grep { (/.*\.md/) && -f "$dir/$_" } readdir(DIR);
closedir(DIR);

foreach my $file (@dir_list){
	print "$file\n";
}


# rm -f tmp.1.txt tmp.2.txt;
# for i in *.md;
# do
# 	FILE_DATE=`stat -c='%y' $i | cut -c 1 --complement | cut -d ' ' -f 1 | sed 's/-/ /g'`;
# 	echo "$i $FILE_DATE" >> tmp.1.txt;
# done
# cat tmp.1.txt | sort -k2n,2 -k3n,3 -k4n,4
# rm -f tmp.1.txt;
# 
