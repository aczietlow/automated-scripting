#!/bin/sh

# remindme - search a datafile for matching lines, or show the contents
#   of the datafile if no arg is specified
#   Create file ~/.remember
#   sh remindme.sh 'string'

rememberfile="$HOME/.remember"

if [ $# -eq 0 ] ; then
  more $rememberfile
else
  grep -i "$@" $rememberfile | ${PAGER:-more}
fi

exit 0