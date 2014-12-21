require 'webrick'
root = File.expand_path '~/index.html'
server = WEBrick::HTTPServer.new :Port => 4000, :DocumentRoot => root
 trap 'INT' do server.shutdown end
 server.start
