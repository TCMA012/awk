for VARIABLE in 1 2 3
do
    echo $VARIABLE
done



for VARIABLE in main master
do
    echo $VARIABLE
done


	
for OUTPUT in $(Linux-Or-Unix-Command-Here)
do
    command1 on $OUTPUT
done

for i in $( ls ); do
    echo $i
done


search_dir=/the/path/to/base/dir
for entry in "$search_dir"/*
do
  echo "$entry"
done


for file in /source/directory/*
do
    if [[ -f $file ]]; then
        #copy stuff ....
    fi
done



cdm
cd TypeScript/TypeScript_Cookbook


for file in *.ts
do
    if [[ -f $file ]]; then
        echo "$file"
        awk -i inplace '{sub(/by Stefan Baumgartner/, "Stefan Baumgartner"); print}' "$file"
    fi
done


diff -b TypeScript_Cookbook TypeScript_Cookbook_copy


