PushPop-Rails
=============

PushPop-Rails integrates Entropi's Pushpop HTML5 Web Development Framework in to the Rails Asset Pipeline. For more information on the Pushpop framework, please [view the Pushpop project page](https://github.com/entropillc/Pushpop) on GitHub

Installation
-------------

Add the following to your Gemfile

    gem "push_pop-rails", :git => "git://github.com/entropillc/PushPop-Rails.git"

Then install the bundle

    bundle install
  
Finally, run the install generator

    rails g push_pop:install
    
Understanding PushPop-Rails
-------------

PushPop-Rails provides a way for easy integration between PushPop and the Rails asset pipeline. If you are using the source of this gem, the Pushpop project is stored under vendor/assets/Pushpop. When working with the source, make sure to initialize all git submodules

    git submodule update --init --recurisve
    
This should pull all dependent submodules in to the project for use.

There are two manifest files: vendor/assets/javascripts/pushpop_rails.js and vendor/assets/stylesheets/pushpop_rails.css. These manifest files include various javascript and css dependencies in to one file, to make it easier to require in the main manifest file of your rails application. These are also put in place by the installer

You can also make these includes manually if you wish. For javascript the includes would be

    //= require externals/scrollkit/scrollkit
    //= require pushpop
    //= require pushpop-tableview/pushpop-tableview
    //= require pushpop-navigationbar/pushpop-navigationbar
    
And for CSS the includes would be

    *= require externals/scrollkit/scrollkit
    *= require pushpop.css
    *= require pushpop-tableview/pushpop-tableview.css
    *= require pushpop-navigationbar/pushpop-navigationbar.css