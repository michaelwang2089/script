#!/usr/bin/python

import os
import sys
import re 

def format_cpp(file_name):
  # reade
  print file_name + " read" 
  fd = open(file_name, "r")
  text = fd.read()
  fd.close()

  ## replace
  # must
  print file_name + " format" 
  p = re.sub(r'[ |\t]+\n', '\n', text)
  p = re.sub(r'(\s+)(if|while|switch)\s*\(', '\\1\\2 (', text)

  # maybe
  p = re.sub(r'(^/s)([+|-|/|%])(^/s)', '\\1 \\2 \\3', text)

  # write
  print file_name + " write" 
  fd = open(file_name, "w")
  fd.truncate()
  fd.write(p)
  fd.close()

for i in range(1, len(sys.argv)):
  format_cpp(sys.argv[i]) 
