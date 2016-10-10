msgconvert
==========

Usage
-----
* Base

        docker run --rm -it \
            -v "`pwd`:/mails" \
            lequoctuan/msgconvert *.msg

* Change docker to user, group (for output files)

        docker run --rm -it \
            -v "`pwd`:/mails" \
            --user $UID:$GROUPS \
            lequoctuan/msgconvert *.msg
