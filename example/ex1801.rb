# -*- coding:utf-8 -*-

require 'date'

class BookInfo
  def initialize(title, author, page, publish_date)
    @title = title
    @author = author
    @page = page
    @publish_date = publish_date
  end

  attr_accessor :title, :author, :page, :publish_date

  def to_csv(key)
    "#{key}, #{@title}, #{@author}, #{@page}, #{@publish_date}"
  end

  def to_s
    "#{@title}, #{@author}, #{@page}, #{@publish_date}"
  end

  def toFormattedString(sep = "\n")
    "書籍名: #{@title}#{sep}著者名: #{@author}#{sep}ページ数: #{@page}#{sep}発刊日: #{@publish_date}#{sep}"
  end
end

class BookInfoManager
  def initialize(filename)
    @csv_fname = filename
    @book_infos = {}
  end

  def setUp
    open(@csv_fname,"r:UTF-8"){|file|
      file.each{|line|
        key, title, author, page, pdate = line.chomp.split(',')
        @book_infos[key] = BookInfoManager.new(title, author, page.to_i, Date.strptime(pdate))
      }
    }
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
    print "ページ名: "
    book_info.page = gets.chomp
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
    puts "\n-------------------------------------"
    @book_infos.each{|key,info|
      print info.toFormattedString
      puts "\n-------------------------------------"
    }
  end

  def saveAllBookInfos
    open(@csv_fname,"w:UTF-8"){|file|
      @book_infos.each{|key,info|
        file.print(info.to_csv(key))
      }
      puts "\n ファイルへ保存しました"
    }
  end

  def run
    while true
      print "
1. 蔵書データの登録
2. 蔵書データの表示
8. 蔵書データをファイルへ保存
9. 終了
番号を選んでください(1,2,8,9): "
      num = gets.chomp
      case
      when '1' == num
        addBookInfo
      when '2' == num
        listAllBookInfos
      when '8' == num
        saveAllBookInfos
      when '9' == num
        break;
      else
      end
    end
  end
end

book_info_manager = BookInfoManager.new("book_info.csv")

book_info_manager.setUp

book_info_manager.run
