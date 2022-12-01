#!/bin/sh

# this script runs the jmeter script, the output of which is then "parsed" via grep to contain 3 elements:
# strings_exist=TRUE
# gap_lessthan5=TRUE
# and an Error count of zero(0)
# if all 3 conditions are met, this script returns "passed", otherwise "failed"

if [ `jmeter -f -n -t Acceleron1.jmx | grep -c "strings_exist=TRUE\|gap_lessthan_5=TRUE\|Err:     0"` -eq '3' ]
then
    echo "passed"
else
    echo "failed"
fi
