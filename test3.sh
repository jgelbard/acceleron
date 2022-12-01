#!/bin/sh

# this script runs the jmeter script, the output of which is then "parsed" via grep to contain 3 elements:
# strings_exist=TRUE
# gap_lessthan5=TRUE
# and an Error count of zero(0)
# if all 3 conditions are met, this script returns "passed", otherwise "failed"

jmeter -f -n -t Acceleron1.jmx > acceleron.out
if [ `cat acceleron.out | grep -c "Err:     0"` -eq '1' ]
then
    echo "HTTP status 200: passed"
else
    echo "HTTP status 200: failed"
fi
if [ `cat acceleron.out | grep -c "strings_exist=TRUE"` -eq '1' ]
then
    echo "Strings Exist: passed"
else
    echo "Strings Exist: failed"
fi
if [ `cat acceleron.out | grep -c "gap_lessthan_5=TRUE"` -eq '1' ]
then
    echo "Response Time within 5 mins: passed"
else
    echo "Response Time within 5 mins: failed"
fi
