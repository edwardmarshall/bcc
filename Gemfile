source 'https://rubygems.org'

gem 'rails', '~>4.0.0'
gem 'rspec_api_documentation'
gem 'raddocs'
gem 'sqlite3'
gem 'json'
gem 'jquery-rails'
gem 'rspec_api_documentation'
gem 'raddocs'
gem 'angularjs-rails-resource' #for passing json to angular in a cleaner way
gem 'high_voltage' #for creating static pages
gem 'sass-rails', '>=3.2'
gem 'bootstrap-sass', '~> 2.3.2.1'

group :assets do
  gem 'coffee-rails'
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier'
end

group :development do
	gem 'capistrano', '~>2.15.5' #deployment
  gem 'better_errors', '~>1.0.1' #creates a better error page
  gem 'binding_of_caller', '~>0.7.2' #used for chrome developer plugin 'RailsPanel'
  gem 'meta_request', '~>0.2.8' #used for chrome developer plugin 'RailsPanel'
  gem 'bullet', '~>4.6.0' #gives suggestions to optimize queries
  gem 'pry' #allows debugging of code through console
  gem 'annotate', '~>2.5.0' #adds schema in comment before or after every factory and model
end

group :development, :test do
  gem 'rspec-rails', '~>2.14.0'
end

group :test do
  gem 'database_cleaner', '~>1.1.1'
  gem 'factory_girl_rails', '~>4.2.1'
  gem 'faker', '~>1.2.0' #generates names, emails, and other placeholders for factories
  gem 'guard-rspec', '~>2.5.4' #automatically runs rspec tests on modified files
  gem 'email_spec'
  gem 'rb-fsevent'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
