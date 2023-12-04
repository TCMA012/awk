NR == FNR {
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
}
FNR in locs {
    n = split(locs[FNR],begLens,RS)
    for ( i=n; i>1; i-- ) {
        split(begLens[i],begLen," ")
        strBeg = begLen[1]
        strLen = begLen[2]
        string = substr($0,strBeg,strLen)
        $0 = substr($0,1,strBeg-1) map[string] substr($0,strBeg+strLen)
    }
}
{ print }