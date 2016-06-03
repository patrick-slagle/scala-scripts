#!/bin/sh
exec scala "$0" "$@"
!#

import java.io.File

val filesDir = (new File("/Users/patrickslagle/Desktop/")).listFiles

for(file <- filesDir if file.getName.endsWith(".gif"))
   file.delete
   
