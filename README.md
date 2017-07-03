# Rails project–– Online Book Review

### Environment

Rails 4.2.1

ruby 2.2.2

heroku-gem 3.99.1 



### Introduction

This is a simple online book review site using Ruby on Rails and deploying on Heroku.

https://gentle-inlet-97986.herokuapp.com/



### Design  

* HomePage
  * search bar
  * Latest record
  * Navigation buttons
* Reviews Page (Book level)
  * Search book
  * Book displayed with picture, title, description
  * Add/edit/delete book (after login)
* Reviews Page (Content level)
  * Writing reviews with author name and date 
* User Page
  * My reviews
  * Require login to modify any information



### Function

* User function (login, registration)  → devise
* Paginate  → will_paginate
* Picture uploader  →  CarrierWave + MiniMagick 
* Picture storage  → AWS S3
* Deploy  →  Heroku