#!/bin/bash


#--------------------------------------
#Check to see if directory or file exists, if not make it
#--------------------------------------

[ -d test_dir ] || mkdir Test-Directory

[ -f test_file2 ] || touch Test-Directory/test_file
