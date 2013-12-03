#!/bin/bash

#RANCID_CONF=/home/callum/git/etv/modules/rancid/files/rancid.conf
#
#. $RANCID_CONF

LIST_OF_GROUPS=`cat /home/callum/projects/rubysandbox/sitecodes`

GROUP_ARRAY=($LIST_OF_GROUPS)

#Offset example first value is the offset second is the number of elemetns in the array
#so ${GROUP_ARRAY[@]:5:5} selects 5 elements from the array frome the 6th element throug to the 10th

GROUP_PAR=6
COUNTER=0
COUNTER2=0
COUNTER_MAX=$((${#GROUP_ARRAY[@]}/$GROUP_PAR))

function call_rancid {
RG_ARRAY=($RANCID_GROUP)
echo $RG_ARRAY
RG_SIZE=${#RG_ARRAY[@]}
echo $RG_SIZE
while [ $COUNTER2 -lt ${#RG_ARRAY[@]} ]; do
    echo "rancid_run ${RG_ARRAY[$COUNTER2]}"
    COUNTER2=$(($COUNTER2 + 1))
done
COUNTER2=0
}

while [  $COUNTER -lt $COUNTER_MAX ]; do
  if [ $COUNTER=$GROUP_PAR ]
  then
    GROUP_OFFSET=$COUNTER*$GROUP_PAR
    RANCID_GROUP=${GROUP_ARRAY[@]:$GROUP_OFFSET:$GROUP_PAR}
    #echo $RANCID_GROUP
    call_rancid $RANCID_GROUP
  fi
    COUNTER=$(($COUNTER+1))
done

