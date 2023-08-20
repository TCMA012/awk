cd "/media/tcma/SeagateBackupPlusDrive/Vinyl siding"

    add line number
awk '{print NR ". " $s}' 'Q Contractor'


    Print a newline after first match in line
awk '{sub(/type/,"\ntype");}1' test
awk '{sub(/type /,"\ntype ");}1' test
awk '{sub(/type .*=/,"\ntype \1=");}1' test
awk '{sub(/type (.*)=/,"\ntype \1=");}1' test





awk capture group

With gawk, you can use the match function to capture parenthesized groups.

gawk 'match($0, pattern, ary) {print ary[1]}' 

example:

echo "abcdef" | gawk 'match($0, /b(.*)e/, a) {print a[1]}' 
echo "abcdef" | awk 'match($0, /b(.*)e/, a) {print a[1]}' 

outputs cd.

Note the specific use of gawk which implements the feature in question.

For a portable alternative you can achieve similar results with match() and substr.

example:

echo "abcdef" | awk 'match($0, /b[^e]*/) {print substr($0, RSTART+1, RLENGTH-1)}'

outputs cd.



echo 'ab cb ad' | awk '{ split(gensub(/a./,SUBSEP"&"SUBSEP,"g",$0),cap,SUBSEP); print cap[2]"|" cap[4] ; }'

ab|ad





awk -i inplace '
BEGIN{FS=OFS="\t"}
$1=="password" && $2=="required" &&  $3=="pam_unix.so" &&  $4 !~ /sha512/{$0 = $0 OFS "sha512"}1
' file

awk '{
if ($3 =="" || $4 == "" || $5 == "")
	print "Some score for the student",$1,"is missing";'
}' 


awk '{
if ($3 >=35 && $4 >= 35 && $5 >= 35)
	print $0,"=>","Pass";
else
	print $0,"=>","Fail";
}' 


awk '{
if ($1 ~ /type/ || $1 ~ /const/ || $1 ~ /function/ || $0 ~ /\(.*)/)
	print $0;
else
	print "//", $0;
}' test




awk multiline match
Multiline pattern matching