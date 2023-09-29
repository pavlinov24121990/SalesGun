# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

gem 'bootsnap', require: false
gem 'cssbundling-rails'
gem 'devise', '~> 4.9'
gem 'jbuilder'
gem 'jsbundling-rails'
gem 'liqpay', '~>2.0.0'
gem 'pagy'
gem 'pg', '~> 1.1'
gem 'propshaft'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.8'
gem 'redis', '~> 4.0'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem "aws-sdk-s3", require: false
gem "image_processing", "~> 1.2"

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'rubocop', '~> 1.56', require: false
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
end
