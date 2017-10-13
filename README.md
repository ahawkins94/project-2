# Sparta Digital Showcase

A web application portfolio for displaying Sparta projects.

###How to run

To run the application locally, follow the steps below:

1. Clone/download the git repository.
2. In the termnial change directory to **project-2**
3. If bundler is not already installed, in the terminal run: **gem install bundler**
4. Use bundler to install the required gems, in the terminal run: **bundle**
5. Create the database for the current rails environment, in the terminal run: **rake db:create**
6. Perform migrations for the current environment, in the terminal run: **rake db:migrate**
7. Populate the database with initial data, in the terminal run: **rake db:seed**
8. Launch the web server, in the terminal run: **rails s**
9. In your browser go to **localhost:3000**

###Technology used

The web application was built using Ruby with the Ruby on Rails web application framework as the server side languages, with PostgreSQL used for the database management system. On the client side, HTML5, CSS and Javascript were used in conjunction with the bootstrap framework.

Alongside the above languages, the following gems were also used in Ruby:

* **rails 5.1.4** - To enable the rails framework
* **pg 0.18** - To enable PostgreSQL
* **puma 3.7** - To use puma as the app server
* **sass-rails 5.0** - To use SCSS for stylesheets
* **uglifier 1.3.0** - Javascript asset compressor
* **coffee-rails 4.2** - To CoffeeScript for .coffee assets and views
* **turbolinks 5** - For navigation optimisation
* **jbuilder 2.5** - For building Build JSON APIs
* **devise** - Authentication Solution
* **bootstrap-sass 3.3.6** - To enable bootstrap framework in ruby
* **jquery-rails** - To enable jquery library
* **paperclip** - Image uploader
* **aws-sdk 2.3** - For storing images using AWS
* **dotenv-rails** - For security of AWS account credentials
* **redcarpet** - For Markdown processing
* **simple-form** - For layout/design of forms

###Approach

This project was tackled using the agile methodology.