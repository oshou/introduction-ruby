# -*- coding: utf-8 -*-

require 'webrick'

config = {
  :Port => 8099,
  :DocumentRoot => '/usr/local/src/ruby/introduction_ruby'
}

# WEBrickのHTTPServerクラスのサーバインスタンスを作成
server = WEBrick::HTTPServer.new(config)

trap(:INT) do
  server.shutdown
end

server.start
