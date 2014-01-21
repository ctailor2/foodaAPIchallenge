# Fooda API Challenge

### App Dependencies
* Ruby 1.9.3
* Rails 4.0.2
* PostgreSQL Database

### Setup the App
````
bundle install
rake db:create
rake db:setup
````

### Run the Test Suite
````
rake db:test:clone
rspec
````

### The API
Each 3rd party application that is registered under a 'developer' account is granted a Fooda API key. This key must be passed in on the header of all HTTP requests to the API in order to access API resources.

Requested API resources are returned as JSON.

**Data Content Type:** application/json

**Base Url:** http://localhost:3000/api/v1

### API Endpoints
**User Authentication**
````
POST /users/auth

Upon successful authentication, user login state is captured via a cookie that is exchanged between client and server on each subsequent user-related request.

Example usage:
curl -X POST -H 'Authorization: Token token="secret"' -H "Content-Type: application/json" localhost:3000/api/v1/users/auth -d '{ "username" : "ctailor2", "password" : "password" }' -c ~/Desktop/cookies.txt
````

**User Restaurants**
````
GET /users/restaurants

Returns a list of restaurants that the user has purchased from, accessible via the key "users".

Example usage:
curl -H 'Authorization: Token token="secret"' -b ~/Desktop/cookies.txt localhost:3000/api/v1/users/restaurants
````

**User Dishes**
````
Get /users/dishes

Returns a list of dishes that the user has purchased, accessible via the key "users".

Example usage:
curl -H 'Authorization: Token token="secret"' -b ~/Desktop/cookies.txt localhost:3000/api/v1/users/dishes
````
