#!/bin/python3
kernel_module = open( '/proc/hello_proc' )
greeting = kernel_module.readline();
print( greeting )
kernel_module.close()

