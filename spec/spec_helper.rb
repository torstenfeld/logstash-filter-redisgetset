require 'logstash/devutils/rspec/spec_helper'
require 'coveralls'
require 'simplecov'

Coveralls.wear!

SimpleCov.start
if ENV['CI']=='true'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end