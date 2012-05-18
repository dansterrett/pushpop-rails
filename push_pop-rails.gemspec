$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "push_pop-rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "push_pop-rails"
  s.version     = PushPop::VERSION
  s.authors     = ["Nicholas W. Watson"]
  s.email       = ["nick@entropi.co"]
  s.homepage    = "http://github.com/entropillc/PushPop-Rails"
  s.summary     = "A Ruby on Rails gem that integrates Entropi Software's PushPop framework developed by Justin D'Arcangelo"
  s.description = "A Ruby on Rails gem that integrates Entropi Software's PushPop framework developed by Justin D'Arcangelo"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.1.0"

end
