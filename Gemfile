#!ruby
source 'https://rubygems.org'

group :development, :test do
  gem 'rake'
  gem 'rspec'
  gem 'puppetlabs_spec_helper'
end

if puppetversion = ENV['PUPPET_GEM_VERSION']
  gem 'puppet', puppetversion, :require => false
else
  gem 'puppet', :require => false
end
