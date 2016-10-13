# README

This is a rails 5 api.  To run it on your machine clone the repo and type "rails s -p XXXX" where XXXX is the desired port(default 3000)

Stories API:
GET on /stories
  get a list of all stories in JSON

POST on /stories with params { "story": {"title": "title goes here", "body": "body goes here"}}
  create a new story with title = "title goes here" and body = "body goes here"

  get the new story in JSON

GET on /stories/1
  get story with id = 1 in JSON

PUT on /stories/1 with params { "story": {"title": "title goes here", "body": "body goes here"}}
  update story with id = 1 such that title = "title goes here" and body = "body goes here"

  get the updated story in JSON

DELETE on /stories/1
  story with id = 1 is deleted

  get HTTP 204 No Content
