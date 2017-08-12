# -*- coding: utf-8 -*-
require 'date'

publish_date = Date.new(2005,1,25)
purchase_date = Date.new(2005,3,15)

puts "出版年: "+publish_date.year.to_s
puts "出版月: "+publish_date.month.to_s
puts "購入日: "+purchase_date.to_s
