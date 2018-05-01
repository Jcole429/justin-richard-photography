# README

For my website I used the Ruby on Rails web framework with a MySQL database for development and a Postgres database for production. I deployed the app to the Heroku cloud platform for production.

There are two tables in my database:
* Images
* Inquiries

Images serves the purpose of storing all of the filepaths for the images I want to use on my website. I can populate the category pages dynamically because of this which makes it much easier to add and remove photos.

Inquiries is where the contact us page posts to. Here I can periodically check to see if I have any new business inquiries.


* The main controller is app/controllers/home_controler
* The views are in app/views/home
* The navbar is app/views/layouts/_header.html.slim
* CSV Files can be found in the CSV Files folder
