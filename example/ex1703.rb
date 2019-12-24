# -*- coding:utf-8 -*-
file = open("sample1.txt","r:UTF-8")

file.each {|line|
  print line
}

file.close
