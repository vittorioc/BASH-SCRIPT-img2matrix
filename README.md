img2matrix
==========

Bash script to convert an image to a matrix, using grayscale information (0=black, 255=white)

Ubuntu 13.04
--------------------------------------

Install (it needs convert, identify from imagemagick and pnmtoplainpnm from netpbm):
  
    $ sudo apt-get install imagemagick nettpbm

Usage:

    $ ./img2matrix.sh <imagefile>
  
Examples.

pipeline usage:

    $ convert -crop 10x10+260+135 455.bmp -| ./img2matrix.sh
    
for every .bmp in the directory create a matrix file .txt:

    $ for i in *.bmp; do ./img2matrix.sh $i > `basename $i .bmp`.txt; done
    
for every .jpg in the directory crop it and create a matrix of this part only:

    $ for i in *.jpg; do convert -crop 10x10+260+135 $i -| ./img2matrix.sh > `basename $i .jpg`.txt; done


  
  
