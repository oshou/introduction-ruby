# -*- coding: utf-8 -* =

indians = ["One little, two little, three little Indians\n",
           "Four little, five little, six little Indians\n",
           "Seven little, eight little, nine little Indians\n",
           "Ten little Indian boys.\n"]

file = File.open("sample5.txt","w:UTF-8")
indians.each{|indian|
  file.print indian
}

file.close

file = open("sample5.txt","r:UTF-8")

print file.read

file.close
