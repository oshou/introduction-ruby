# -*- coding: utf-8 -*-

line_no = 0

file = open("sample1.txt","r:UTF-8")

while( line = file.gets )
  line_no += 1
  print("#{line_no}: #{line}")
end

file.close
