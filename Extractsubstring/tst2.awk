NR == FNR {
	arr[NR]=$0; 
    tailBeg = 1
    while ( match(substr($0,tailBeg),/"[[:alpha:]_][[:alnum:]_]*"/) ) {
        strBeg = tailBeg + RSTART
        strLen = RLENGTH - 2
        string = substr($0,strBeg,strLen)
        strings[string]
        locs[FNR] = locs[FNR] RS strBeg " " strLen
        tailBeg += (RSTART + RLENGTH - 1)
    }
    next
}
FNR == 1 {
    for ( string in strings ) {
        map[string] = toupper(string)
        printf "public static final String %s = \"%s\";\n", map[string], string
	}
	for (i = 1; i <= length(arr); i++) {
		for ( string in strings ) {
			map[string] = toupper(string)
			text = arr[i]
			gsub("\""string"\"", map[string], text)
		}
		printf "%s\n", text
	}
}