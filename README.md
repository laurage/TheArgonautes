#THE ARGONAUTES

![Argonautes-images](https://github.com/laurage/TheArgonautes/blob/master/theargonautes.jpg)

#Introduction

This app has been built by a team of two people over five days and was the first of two projects during our time on the Web Development course at [Le Wagon](https://www.lewagon.com), Nantes (France). The requirements of this project were to build a Rails application on the model of AirBnB: users can both be sellers and buyers. A hosted version of **The Argonautes** can be found [here](http://www.allergo-scan.com/) The code can be viewed [here](https://github.com/laurage/TheArgonautes).

#The App

**The Argonautes** is a user-led event platform to make new friends.

#How to use the site

Users can create events such as "Going to the cinema watching the new Star-Wars" or "Visiting the Tate Gallery" and indicate the min-max number of people they'd like to do it with. Other users can then register to participate. This gives users the chance to do activities they'd never have thought of themselves, as well as making new friends who have similar ideas about what consists in fun and interesting activities.

#How it was built

**The Argonautes** is a Rails application. It was made using Bootstrap CSS framework, SASS, jQuery, and Ruby.
Images are hosted on [Cloudinary](http://cloudinary.com/) and loaded with [CarrierWave](https://github.com/carrierwaveuploader/carrierwave).

The search is implemented with [pgSearch](https://github.com/Casecommons/pg_search) and uses [Bootstrap-datePicker](https://github.com/Nerian/bootstrap-datepicker-rails)
Authentication is enabled by [Devise](https://github.com/plataformatec/devise) and [Omniauth-Facebook](https://github.com/mkdynamic/omniauth-facebook).

I used Illustrator and Sketch to create the wireframes & UI.

#Getting started

These steps are required in order to run the application:

1. Ruby, Rails and Postgresql must be installed
2. Install the gem of the Gemfile: $bundle install
3. To create and populate the database, run in the terminal; $rails db:create db:migrate db:seed
4. Run $rails server and go to [http://localhost:3000]() in your browser to view the site.

#Credits

* The font used throughout the site was taken from [Google Fonts](https://fonts.google.com/)
* The icons used in this project where taken from [The Noun Project](https://thenounproject.com/) + [Font Awesome](https://fontawesome.io)
