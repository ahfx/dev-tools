#!/usr/bin/python

import sys

def gentmpfile():
    
    print("creating new  file")
    filename=raw_input ("enter the name of file:")
    fileext=raw_input ("enter extension of file:")
    print "Enter the frame range start: "
    rfstart=int(sys.stdin.readline())
    print "Enter the frame range end: "
    rfend=int(sys.stdin.readline())

    for i in range(rfstart, rfend):
        framenum = '{:04d}'.format(i)
        name='./{}.{}.{}'.format(filename,framenum,fileext)
        try:
            file=open(name,'w')
            file.close()
        except:
            print "an error occured, did not open: ", name
            #sys.exit(0)

if __name__ == "__main__":
    gentmpfile()