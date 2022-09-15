# frozen_string_literal: true
#
# This file should contain code for the component
# 
require 'rubygems'
require 'socket'

server = TCPServer.new 2000 

loop do 
    client = server.accept
    
    while input = client.gets
        client.puts  "#{input.chomp} Hell its running!!!"
    end 

    client.close
end


# Terminal run: ruby tcp.rb  (in the same directory as the file) - then open another terminal and run nc localhost 2000