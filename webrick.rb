require 'webrick'
root = File.expand_path '' #not sure why that worked, and ~/ didnt.....
server = WEBrick::HTTPServer.new :Port => 4000, :DocumentRoot => root
 trap 'INT' do server.shutdown end
 server.start
