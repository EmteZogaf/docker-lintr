#!/bin/bash

if ! $(command -v "$1")
then
    status=0

    for f in "$@"
    do
        echo
        echo "Checking syntax of file '$f'"
        R --slave -e "require(lintr); errors <- lint('$f'); print(errors); quit(save = 'no', status = if (length(errors) > 0) 1 else 0)"
        if [ $? -ne 0 ]
        then
            status=1
        fi
    done

    exit $status
fi

exec "$@"
