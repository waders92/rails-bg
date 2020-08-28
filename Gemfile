source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'bootstrap', '~> 5.0.0.alpha1'
gem 'carrierwave', '~> 1.0'
gem 'devise'
gem 'figaro'
gem 'fog-aws'
gem 'jbuilder', '~> 2.7'
gem 'mini_magick'
gem 'puma', '~> 4.1'
gem 'rails', '~> 6.0.3', '>= 6.0.3.1'
gem 'rubocop', '~> 0.89.1', require: false
gem 'sass-rails', '>= 6'
gem 'simple_form'
gem 'sprockets'
gem 'sprockets-rails', require: 'sprockets/railtie'
gem 'webpacker', '~> 4.0'
gem 'will_paginate', '~> 3.1.0'

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'sqlite3', '~> 1.3', '>= 1.3.11'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'rspec-rails', '~> 4.0.1'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
