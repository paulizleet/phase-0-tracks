#What are some common HTTP status codes?

## 200 - "OK"

The request you've sent was valid and the server will satisfy your request.

##404 - "File not found" 

You have requested a file that the server can't find. 

## 503 - Service Unavailable

The server can't satisfy your request for some reason.  The server might be overloaded, or be down for maintainance.


#What is the difference between a GET request and a POST request? 

##GET 

A web client asking a server to send a file.  A GET request is sent asking for each resource whenever a src="xyz" is detected in a web page.

##POST

A web client is sending data to the server for processing.  POST requests are used for things like logging into a secure website, or sending a message to a friend.

#What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

A cookie is a small file that a server gives to a client to remember the state of a browsing session.  It gives a client an easy way to pick up where it left off if it gets interrupted.  For example, if you close a browser program before logging out of your facebook account.  Data in a cookie can be sent to the server instead of prompting a user to enter their username and password.