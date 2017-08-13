# -*- coding: utf-8 -*-

require 'date'

class BookInfo
  def initialize(title, author, page, publish_date)
    @title = title
    @author = author
    @page = page
    @publish_date = publish_date
  end

  attr_accessor :title, :author, :page, :publish_date

  def to_s
    "#{@title}, #{@author}, #{@page}, #{@publish_date}"
  end

  def toFormattedString(sep = "\n")
    "書籍名: #{@title}#{sep}著者名: #{@author}#{sep}ページ数#{@page}#{sep}発刊日: #{publish_date}#{sep}"
  end
end

class BookInfoManager
  def initialize
    @book_infos = {}
  end

  def setUp
    @book_infos["Tanaka2017"] = BookInfo.new(
      "実践アジャイル",
      "田中 太郎",
      248,
      Date.new(2017,8,11)
    )
    @book_infos["Satou2017"] = BookInfo.new(
      "入門LEGO",
      "佐藤 次郎",
      164,
      Date.new(2017,8,16)
    )
  end

  def addBookInfo
    book_info = BookInfo.new("","",0,Date.new)
    print "\n"
    print "キー: "
    key = gets.chomp
    print "書籍名: "
    book_info.title = gets.chomp
    print "著者名: "
    book_info.author = gets.chomp
    print "ページ数: "
    book_info.page = gets.chomp.to_i
    print "発刊年: "
    year = gets.chomp.to_i
    print "発刊月: "
    month = gets.chomp.to_i
    print "発刊日: "
    day = gets.chomp.to_i
    book_info.publish_date = Date.new(year,month,day)

    @book_infos[key] = book_info
  end

  def listAllBookInfos
    puts "\n-----------------------------"
    @book_infos.each {|key,info|
      print info.toFormattedString
      puts "\n-----------------------------"
    }
  end

  def run
    while true
      print "
1. 蔵書データの登録
2. 蔵書データの表示
9. 終了
番号を選んでください(1,2,9): "
      num = gets.chomp
      case
      when '1' == num
        addBookInfo
      when '2' == num
        listAllBookInfos
      when '9' == num
        break;
      else
      end
    end
  end
end

book_info_manager = BookInfoManager.new
book_info_manager.setUp
book_info_manager.run
