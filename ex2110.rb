# -*- coding: utf-8 -*-

require 'rubygems'
require 'dbi'

dbh = DBI.connect('DBI:SQLite3:fruits01.db')

sth = dbh.execute("delete from products")
puts "all records are deleted."

sth.finish

dbh.disconnect
