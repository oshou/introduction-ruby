# -*- coding: utf-8 -*-

require 'date'

class BookInfo
  def initialize(title,author,page,publish_date)
    @title = title
    @author = author
    @page = page
    @publish_date = publish_date
  end

  attr_accessor :title, :author, :page, :publish_date

  def to_s
    "#{@title}, #{@author}, #{@page}, #{@publish_date}"
  end
end

book_infos = Hash.new
book_infos["Tanaka2017"] = BookInfo.new(
  "実践アジャイル",
  "田中 太郎",
  248,
  Date.new(2017,8,11)
)

book_infos.each { |key,value|
  puts "#{key}: #{value.to_s}"
}
