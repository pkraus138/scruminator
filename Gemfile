source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.1"

gem "bootsnap", require: false
gem "devise"
gem "jbuilder"
gem "pg"
gem "puma"
gem "rails"
gem "sass-rails"
gem "slim-rails"
gem "turbolinks"
gem "webpacker"

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "database_cleaner"
  gem "factory_bot_rails"
  gem "faker"
  gem "launchy"
  gem "rspec-rails"
end

group :development do
  gem "annotate"
  gem "better_errors"
  gem "binding_of_caller"
  gem "listen"
  gem "spring"
  gem "spring-watcher-listen"
  gem "web-console"
end

group :test do
  gem "bundler-audit"
  gem "capybara"
  gem "selenium-webdriver"
  gem "shoulda-matchers"
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
