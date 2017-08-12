# -*- coding: utf-8 -*-

require 'date'

class BookInfo
  def initialize(title,author,page,publish_date)
    @title = title
    @author = author
    @page = page
    @publish_date = publish_date
  end

  attr_accessor :title,:author,:page,:publish_date

  def to_s
    "#@title, #@author, #@page, #@publish_date"
  end
end

book_info = BookInfo.new(
  "実践アジャイル",
  "田中 太郎",
  248,
  Date.new(2005,1,25)
)

puts book_info.to_s

puts "書籍名: " + book_info.title
puts "著者名: " + book_info.author
puts "ページ数: " + book_info.page.to_s
puts "発刊日: " + book_info.publish_date.to_s
