source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"
gem "rails", "~> 7.0.8"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "jsbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "cssbundling-rails"
gem "jbuilder"
gem "redis"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "simple_form"
gem "devise"

group :development, :test do  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do  gem "web-console"
  gem "rails_live_reload"
end

group :test do  gem "capybara"
  gem "selenium-webdriver"

end
