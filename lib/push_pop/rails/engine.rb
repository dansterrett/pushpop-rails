module PushPop
  module Rails
    class Engine < ::Rails::Engine
      initializer 'pushpop-rails.setup', :group => :all do |app|
          app.config.assets.paths << File.join(config.root, 'vendor', 'assets', "Pushpop")
      end
    end
  end
end