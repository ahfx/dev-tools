#!/usr/bin/python

""" 
    check for missing frames at a glance by
    print out complete sequences of frames 
"""

import sys
import glob

def seqls():
    
    
    if (len(sys.argv) > 1): filepath = sys.argv[1]
    else: filepath = '.' 
    
    i = 99999;
    j = -1;
    
    #match path/name.####.ext
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
        
        if (frame < i): i = frame #condition to catch first frame
        if (frame == j+1): j = frame
        
        if (frame > j+1): 
            print '{name}.[{start:04d}-{end:04d}].{ext}'.format(start=i,end=j,**file)
            i = j = frame

    print '{name}.[{start:04d}-{end:04d}].{ext}'.format(start=i,end=j,**file)
    
if __name__ == "__main__":
    seqls()