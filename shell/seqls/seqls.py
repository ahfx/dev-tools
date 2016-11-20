#!/usr/bin/python

""" 
    This is a convience script to check for missing frames at a glance
    usage: ./seqls pathtoframes
"""

import sys
import glob

def seqls():
   
    #check if arguments are passed, otherwise use current dir 
    if (len(sys.argv) > 1): filepath = sys.argv[1]
    else: filepath = '.' 
    
    i = 99999; 
    j = -1;
    
    #glob path/name.####.ext
    filesglob = glob.glob('{}/*.[0-9]*.*'.format(filepath))
    filesglob.sort()
    file = {'path':'','name':'','frame':'','ext':''} 
    
    for fileglob in filesglob:
        filesplit_path = fileglob.split('/')
        filesplit_name = filesplit_path[-1].split('.')
        
        file = {
            'path'  : '/'.join(filesplit_path[:-1]),
            'name'  : filesplit_name[0],
            'frame' : int(filesplit_name[-2]),
            'ext'   : filesplit_name[-1]
        }
        
        frame = file['frame']
        
        if (frame > j+1): 
            print '{name}.[{s:04d}-{e:04d}].{ext}'.format(s=i,e=j,**file)
            i = j = frame
        else: 
            j = frame
            if (frame < i): i = frame #condition to catch first frame
    
    
    print '{name}.[{s:04d}-{e:04d}].{ext}'.format(s=i,e=j,**file)
    
if __name__ == "__main__": seqls()