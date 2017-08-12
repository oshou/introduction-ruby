# -*- coding: utf-8 -*-
pages = 240
price = 2500
tax = 0.08
purchase_price = price * (1+tax)

puts "ページ数: "+pages.to_s+"ページ"
puts "本体価格: "+price.to_s+"円"
puts "購入費用: "+purchase_price.to_s+"円"
