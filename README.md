# Project Overview
To design, build, and deploy a two-sided marketplace using Ruby on Rails.

EscapeGoat is an app which helps people 'escape' from bad situations. By creating an Escape request, others users(Goats) can accept the request and help them escape! While the Goats receive payment for their services. 

#### Tech Stack
* HTML
* CSS
* Rails
* Ruby
* Javascript

#### Set-up Prerequisites
This iteration of EscapeGoat requires `PostgresQL` to manage database bases, such that we can deploy to `Heroku`. Furthermore, the ENV variables were set up and stored using `Figaro`.

#### Gem Requirements
* [Bootstrap](https://github.com/twbs/bootstrap-rubygem)
* [Devise](https://github.com/plataformatec/devise)
* [Stripe](https://stripe.com/docs/checkout/rails)
* [Geocoder](https://github.com/alexreisner/geocoder)
* [Figaro](ttps://github.com/laserlemon/figaro)
* [Shrine](https://github.com/janko-m/shrine)

-----
# Planning
This section will outline my planning process prior to writing any actual code. The items in this section were not implemented in the final product, as I adopted an agile development approach.

#### User Stories
[User Stories](https://trello.com/b/fMee92l2/escapegoat-user-stories) via Trello

#### User Flow
[User Flow](https://docs.google.com/drawings/d/1RvSlOQBN8JdUc7LEeIhU6uBYjp3YR1-6aUt37RZR6vM/edit) via Google Drawing

#### Wireframes
[Wireframe](https://imgur.com/a/LIrec) based on User Flow via MockPlus

#### ERD
[ERD](https://i.imgur.com/knUYB3p.png) - Initial

## Style Guide
I intended on planning and adding these features once the back end code was complete. However, due to time constraints I was unable to start this section.

CSS:

Colors:

Fonts:

-----
# Build Process
Create the app using postgresQL as the database:
>rails new escapegoat --database=postgresql

add and configure [Figaro](ttps://github.com/laserlemon/figaro)

add and configure [Bootstrap](https://github.com/twbs/bootstrap-rubygem)

add and configure [Devise](https://github.com/plataformatec/devise)

add and configure [Shrine](https://github.com/janko-m/shrine)
--> using this guide: https://code.tutsplus.com/tutorials/uploading-files-with-rails-and-shrine--cms-27596

Create the Escape scaffold:
>rails g scaffold Escape user:references rescue_title:text dollar_amount:decimal location:string description:text requirements:text

add and configure [Geocoder](https://github.com/alexreisner/geocoder)

add and configure [Google Maps API](https://developers.google.com/maps/documentation/javascript/adding-a-google-map#step_3_get_an_api_key)

add and configure [Stripe](https://stripe.com/docs/checkout/rails)

add and configure [Messaging](https://www.nopio.com/blog/rails-real-time-chat-application-part-1/)

add and configure
[Search Form](http://www.rymcmahon.com/articles/2)

Configure the rails paths to suit UX

#### Problems
* Hard to plan due to weak skillset.

* Poor file name structure due to weak planning. e.g. The users `profile` is call `photo` in atom and the `homepage` is actually `escape.index`.

* PostgresQL issues due to Windows.

* Due to time constraints: No CSS styling, and I forgot to configure the api keys for production

* No testing - [Rspec](https://github.com/rspec/rspec-rails) does not work on windows
