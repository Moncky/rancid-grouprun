rancid-grouprun
===============

A wrapper written in Bash to run parallel rancid jobs on rancid groups

This is the beginnings of a script.  Originally it was going to devide rancid groups in to groups of n and the run those in parralel.  The parralel option in rancid is only applied within the group when it is run so in a situation where you have a large number of rancid groups you need a way to run rancid against a number of groups at a time.

It has since eveloved and is a bit of a mess but it does the job to a fashion.

This is no where near complete, nor should it be relied on, it kind of does what I need it to do and I will continue to poke around at it and tidy it up.

If you do want to use it then all you need to do is:

Drop the file in to your rancid/bin

Modify GROUP_PAR with the number of groups you want to run in parrallel

Make sure that the par setting in rancid.conf is sensible

Adjust the comments at the top of the script to source your rancid.conf file

Known Issues:

Rancid runs more than one rancid-run command per group, the script doesn't handle that.

The script is a tad obfusticated as I changed from batching a number of groups to a continuous run.

This README is probably a gramatical and spelling nightmare.
