# -*- coding: utf-8 -*-

open("sample1.txt","r:UTF-8") {|file|
  file.each{|line|
    print line
  }
}
