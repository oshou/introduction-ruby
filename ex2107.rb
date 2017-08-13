# -*- coding: utf-8 -*-

require 'rubygems'
require 'dbi'

dbh = DBI.connect('DBI:SQLite3:fruits01.db')

dbh.do("drop table if exists products;")
puts "table 'products' has dropped."

dbh.do("create table products(
       id             int           not null,
       title          varchar(100)  not null,
       description    text          not null,
       image_url      varchar(200)  not null,
       price          int           not null,
       date_available datetime      not null,
       primary        key(id)
)")
puts "table 'products' has created."

dbh.disconnect
