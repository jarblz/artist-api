## Synopsis

This is an app containing components of a REST api, serving up search results for a list of artists
- artists.json was used to seed the database
- I did a small amount of data cleaning but not much

## Features/Usage

 - Google+ Login, or regular login
 - Live search for the artists seeded in the database via the interface
 - consumption of the api via an api call (unauthenticated for now)

##API Endpoints (available via the web or any api client)
I only had time to create 2 of the endpoints.
GET https://artists-api.herokuapp.com/api/artists
 - this will return a json payload of all artists
GET https://artists-api.herokuapp.com/api/search
 - Use the query param 'term' to pass search terms, e.g. `https://artists-api.herokuapp.com/api/search?term=jon`

## Tests

There are tests for the 2 api endpoints that I created
- `bundle exec rspec spec/requests/api/vi/artists_spec.rb`

## Installation

1. Clone the repo
2. email me and ask for the .env file (jaredables@gmail.com)
3. rake db:create, migrate, and seed

## Features that were left out, as I didn't have time to finish them

  - Complete CRUD operations for the REST API.  
  - Better image handling.  Right now most images are not pulling in.  I think I could fix this by sourcing the url from another field or the web.
  - Google Oauth spec
  - Single Page App Requirement:  I didn't feel like it was worth the time to make the entire app single page, So I went with what I know, which is also the skillset listed in the job description, a ruby on rails app.
