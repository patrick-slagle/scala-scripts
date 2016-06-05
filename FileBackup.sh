#!/bin/sh
exec scala "$0" "$@"
!#

import java.io.File

val directory = args(0)

val target = args(1)
  
createTarget { target => new File(target).mkdir }
   

def createTarget(y: String => Unit) =
  if(!new File(target).exists)
    y(target)

// Will be implementing these    
def copy(url: String) = new File(url)     

def remove(url: File) =
  if(url.exists) url.delete 

def paste(url: String)(x: File => Boolean) = 
