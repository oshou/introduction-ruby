#  -*- coding: utf-8 -*-

fruits = ["apple","banana","cherry","fig","grape"]

fname = "sample7.txt"

open(fname,"w:UTF-8"){|file|
  fruits.each {|fruit|
    file.puts fruit
  }
}

open(fname,"r:UTF-8"){|file|
  file.each {|line|
    print line
  }
}

File.delete(fname)

open(fname,"r:UTF-8")
