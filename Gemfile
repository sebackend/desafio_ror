# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.4.2'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'dotenv-rails', '~> 2.4.0'
gem 'pg',           '>= 0.18', '< 2.0'
gem 'puma',         '~> 3.7'
gem 'rack-cors',    '~> 1.1.1'
gem 'rails',        '~> 5.1.7'
gem 'rest-client',  '~> 2.0.2'

group :development, :test do
  gem 'awesome_print', '~> 1.8.0'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-byebug', '~> 3.9.0'
end

group :development do
  gem 'listen',        '>= 3.0.5', '< 3.2'
  gem 'rubocop',       '~> 0.81.0'
  gem 'rubocop-rspec', '~> 1.38.1'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rspec-rails', '~> 4.0.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
