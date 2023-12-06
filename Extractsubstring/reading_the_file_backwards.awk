{
    while ( match($0,/"[[:alpha:]_][[:alnum:]_]*"/) ) {
        string = substr($0,RSTART+1,RLENGTH - 2)
        map[string] = toupper(string)
        printf "%s%s", substr($0,1,RSTART-1), map[string]
        $0 = substr($0,RSTART+RLENGTH)
    }
    print
}
END {
    for ( string in map ) {
        printf "public static final String %s = \"%s\";\n", map[string], string
    }
}
