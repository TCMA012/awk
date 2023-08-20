sed 's/day/night/' <old >new

echo Sunday | sed 's/day/night/'
echo Sunday | sed 's#day#night#'

sed 's###'
sed -e 's###'

using double quotes in the sed command to allow shell variable expansion:
echo $repo | sed -e 's#.*com/##' -e "s#$appdir##" -e 's#/##'



sed Unicode
sed capture group
echo Hello sed! | sed 's/\(Hello\) sed!/\1 Linuxhint/'
sed 's/.*ZZ\([[:upper:]]*[0-9]*\).*/\1/'

sed -e 's#type \(.*\)=#\ntype \1=#' test


 
cdm 
cd TypeScript/'Learning TypeScript'

sed -e 's#->.*##' -e 's# $#;#' -e 's#^#type  = #' Reverse
sed -e 's#->.*##' -e 's# $#;#' -e 's#^#type  = #' Zip



cdm 
cd awk/data3

sed 's#.)##' github2raw



'/Baeldung/d'



You can't do non greedy regex in sed
