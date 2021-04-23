isValidDate() {
    local d="$1"
    date "+%Y-%m-%d" -d "$d" > /dev/null  2>&1
    if [ $? != 0 ]
    then
        echo "Date $d NOT a valid YYYY-MM-DD date"
        exit 1
    fi
}
#Uses
isValidDate "2021-09-04"
