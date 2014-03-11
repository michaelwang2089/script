#!/usr/bin/python

import os
import sys
import re
import getpass
import time 

def format_h(file_name):

  new_name = file_name + ".h"
  print new_name + " create" 
  fd = open(new_name, "w")

  content = """// -*- C++ -*-
//========================================================================
/**
 * Author   : """ + getpass.getuser() + """
 * Date     : """ + time.strftime('%Y-%m-%d %H:%M') + """
 */
//========================================================================

#ifndef """ + (file_name + '_H_').upper() + """
#define """ + (file_name + '_H_').upper() + """

// Lib header

// Forward declarations
/**
 * @class """ + file_name + """
 *
 * @brief
 */
class """ + file_name + """
{
public:
  """ + file_name + """();
  ~""" + file_name + """();
private:
};

#endif // """ + (file_name + '_H_').upper() + """
"""
  fd.write(content)
  fd.close()

def format_cpp(file_name):

  new_name = file_name + ".cpp"
  print new_name + " create" 
  fd = open(new_name, "w")

  content = '''#include "''' + file_name + '.h' '''"

// Lib header

// Defines

'''
  fd.write(content)
  fd.close()

for i in range(1, len(sys.argv)):
  format_h(sys.argv[i]) 
  format_cpp(sys.argv[i]) 
