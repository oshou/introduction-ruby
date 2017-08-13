# -*- coding: utf-8 -*-

friends = {
  :tarou => "田中 太郎",
  :jirou => "佐藤 次郎",
  :saburou => "鈴木 三郎"
}

friends[:shirou] = "吉田 士郎"

puts friends.include?(:shirou)
puts friends[:shirou]

friends.delete(:shirou)

if friends.include?(:shirou) then
  puts friends[:shirou]
else
  puts "見つかりません"
end
