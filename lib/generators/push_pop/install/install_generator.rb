require 'rails/generators/base'

module PushPop
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      
      def add_javascript
        insert_into_file "app/assets/javascripts/application.js","//= require pushpop_rails\n", :before => "//= require_tree ."
      end
      
      def add_css
        insert_into_file "app/assets/stylesheets/application.css", " *= require pushpop_rails\n", :after => "*= require_tree .\n"
      end
      
    end
  end
end