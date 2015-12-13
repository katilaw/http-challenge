<<-DOC

HTTP Challenge
--------------

* Define the common HTTP verbs
  - GET: Reads or retrieves information from the server
  - POST: Create new information/html and adds them to the server
  - PUT/PATCH: Updates any information retreived
  - DELETE: Removes html files from the server

* Use the tool of your choice to draw the HTTP request/response cycle.
  - include a link to your diagram, here



* Use telnet, curl, or ruby code to retrieve the messages at
  launch-academy-chat.herokuapp.com/messages

  curl  launch-academy-chat.herokuapp.com/messages --verbose

* Use telnet, curl, or ruby code to create a new message at
  launch-academy-chat.herokuapp.com/messages

  - Kernel::system method in ruby will allow you to execute command-line utilities such as curl.
  - other useful ruby libraries:
    * Net::HTTP
    * Net::Telnet

DOC

# code goes here
curl launch-academy-chat.herokuapp.com/messages

curl --data-urlencode "content= if this work, maaaaan" launch-academy-chat.herokuapp.com/messages

HTTP client => HTTP request => HTTP server
HTTP client <= HTTP response <= HTTP server
