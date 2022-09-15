# ruby-app-tcp-server

Ruby TCP and HTTP servers (port 2000)

# TCP terminal & browser

* Terminal

1. Run tcpserver.rb in one terminal ($ ruby tcp.rb)
2. In other terminal use Netcat - to run use: 

$ nc localhost 2000 

in same terminal type out any string message, response will append "Hell its running"

* Browser

1. run browser.rb in terminal ($ ruby browser.rb)

IN BROWSER visit localhost:2000/show/data, response will be "Hell, it still works in browser!"


