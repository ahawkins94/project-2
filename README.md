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

###Using the product

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

This project was tackled using the agile methodology. The following section outlines the various stages of the projects progression.

##### Scoping Session

The project began with a scoping session between the scrum team and the client, which established the product criteria and design. The client wished the design/aesthetics of the web application to match the design of the Sparta Global webiste as closely as possible.

The base requirements were established as: 

* Database for storing project data.
* Login system.
* Restful routes for projects.
* Users can only edit/delete their own projects.
* Project images stored on AWS.

The following additonal features (in order of priority) were also established:

1. Administrator login, who must give approval in order for created projects to go live on site.
2. Search bar/ability to refine projects shown.
3. GitHub data (e.g. number of commits and other insight data) for a project to appear on its relevant show page.
4. Ability for users to write project desciption in markdown and have it rendered on the site.
5. Like feature, where users can "like" projects.
6. Ability to share project online.

It was established that the client would not be contactable during the development period, but the Product Owner had been fully briefed about the business requirements should there be any questions.

