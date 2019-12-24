# -*- coding: utf-8 -*-

friends = {
  :tarou => "田中 太郎",
  :jirou => "佐藤 次郎",
  :saburou => "鈴木 三郎"
}

friends.each{|key,value|
  puts "#{key} #{value}"
}
