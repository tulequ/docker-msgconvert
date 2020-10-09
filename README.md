msgconvert
==========

Usage
-----

```bash
docker run --rm -it \
    -v "`pwd`:/mails" \
    --user $UID:$GROUPS \
    lequoctuan/msgconvert *.msg
```
