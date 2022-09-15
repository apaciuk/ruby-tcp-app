# frozen_string_literal: true
#
# This file should contain code for the component
#

require 'rubygems'
require 'socket'

server = TCPServer.new 2000

loop do 
    client = server.accept 

    # Accept a HTTP request and parse it
    request = client.readline 
    method_token, target, version_number = request.split
    puts "Recieved request for #{target} using #{method_token} with #{version_number}"

    # Send a response back to the client
    case [method_token, target]
    when ['GET', '/show/data']  # browser route: localhost:2000/show/data
        client.puts "HTTP/1.1 200 OK"
        client.puts "Content-Type: text/html"
        client.puts
        client.puts "<html><body><h1>Hell, it still works in browser!</h1></body></html>"
    else
        client.puts "HTTP/1.1 404 Not Found"
        client.puts "Content-Type: text/html"
        client.puts
        client.puts "<html><body><h1>404 Not Found</h1></body></html>"
    end 

    # Close client
    client.close

end
