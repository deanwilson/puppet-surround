#!ruby
source 'https://rubygems.org'

group :development, :test do
  gem 'rake', '~> 13.0.0'
  gem 'rspec', '~> 3.9.0'
  gem 'puppetlabs_spec_helper', '~> 2.14.1'
  gem 'rubocop', '~> 0.36.0', require: false
end

if puppetversion = ENV['PUPPET_GEM_VERSION']
  gem 'puppet', puppetversion, require: false
else
  gem 'puppet', require: false
end
