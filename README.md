# img2matrix

Bash script to convert an image to a matrix, using grayscale information (0=black, 255=white)

## Ubuntu 13.04

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

## Authors

- [Vittorio Cecchetto](mailto:v.cecchetto@gmail.com)

## License

(The MIT License)

Copyright (c) 2013 Vittorio Cecchetto for CVD Lab 
([http://dia.uniroma3.it/~cvdlab](http://dia.uniroma3.it/~cvdlab))

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

  
