# Project Overview
### Tech Stack
Rails,
### Set-up Prerequisites
figaro(env) heroku
### Gem Requirements
### Business Problem
SCIPAB
### Solution
-----
# Planning
### User Stories
### Wireframes
### User Flow
### ERD
## Style Guide
css, color, font

-----
# Build Process
rails new escapegoat --database=postgresql
add bootstrap: https://github.com/twbs/bootstrap-rubygem
rails g scaffold Profile image:text user_id:integer first_name:text last_name:text email:text
add devise: https://github.com/plataformatec/devise
add shrine: https://github.com/janko-m/shrine --> using this guide: https://code.tutsplus.com/tutorials/uploading-files-with-rails-and-shrine--cms-27596
figaro: https://github.com/laserlemon/figaro
rails g scaffold Escape user_id:integer rescue_title:text dollar_amount:decimal location:string description:text requirements:text
geocoder: https://github.com/alexreisner/geocoder
google maps api: https://developers.google.com/maps/documentation/javascript/adding-a-google-map#step_3_get_an_api_key
stripe: https://stripe.com/docs/checkout/rails
messaging: https://www.nopio.com/blog/rails-real-time-chat-application-part-1/
configuring rails paths
search form: http://www.rymcmahon.com/articles/2
