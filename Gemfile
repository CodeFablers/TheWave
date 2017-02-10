source 'https://rubygems.org'

# ================================= CORE  ====================================
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use PostgreSQL as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# ================================= /CORE  ===================================

# ================================ FRONT  ====================================
# Use SASS for stylesheets
gem 'sass-rails', '~> 5.0'
# Front-end framework
gem 'foundation-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# ================================ /FRONT  ===================================

# ================================= BACK =====================================
# ================================= /BACK ====================================

# ================================ DEPLOY ====================================
# Use Capistrano for deployment
gem 'capistrano-rails', group: :development
# ================================ /DEPLOY ===================================

# ============================= DEVELOPMENT  =================================
group :development, :test do
  # Call 'byebug' anywhere in the code to stop
  # execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'rubocop', require: false
end

group :development do
  gem 'factory_girl_rails', '4.5.0'
  gem 'faker'
  gem 'listen', '~> 3.0.5'
  gem 'rspec-rails', '~> 3.5.0'
  # <%= console %> anywhere in the code.
  gem 'web-console'
end

group :test do
  gem 'database_cleaner'
  gem 'nyan-cat-formatter',
      git: 'git@github.com:pinglamb/nyan-cat-formatter.git'
  gem 'rails-controller-testing'
  gem 'shoulda-matchers', '2.7.0'
  gem 'simplecov'
end
# ============================= /DEVELOPMENT  ================================
