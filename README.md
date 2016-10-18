# README
Live on [Heroku](https://agile-harbor-27543.herokuapp.com/)

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

For Volunteers and Adopters it's basic REST:
use /volunteers or /adopters.
GET    on /volunteers for a list of volunteers
POST   on /volunteers to create a new volunteer
  params: fname, lname, phone, email, activity
GET    on /volunteers/1 to show volunteer with id = 1
PUT    on /volunteers/1 to update volunteer with id = 1
  params: fname, lname, phone, email, activity
DELETE on /volunteers/1 to delete volunteer with id = 1

substitute /adopters for adopters methods
adopters params: fname, lname, phone, email
