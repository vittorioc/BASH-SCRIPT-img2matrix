#!/bin/bash

if [ -z "$1" ] ; then cat > temp; filetemp=$(basename temp); else filetemp=$1; fi;

w=`identify -format "%w" $filetemp`;
h=`identify -format "%h" $filetemp`;

convert $filetemp -colorspace gray -depth 8 PGM:- |\

pnmtoplainpnm |\

tail -n +4 |\

tr -s '\012' ' ' |\

awk '{print "["; for (i=1;i<='$h';i++) {printf "["; for (j='$w'*(i-1)+1;j<='$w'*i;j++) {printf $j; if (j%'$w'!=0) printf ","}; printf "]"; if (i%'$h'!=0) print ","; else print " "}; print "]"}';

if [ -z "$1" ] ; then rm temp; fi;
