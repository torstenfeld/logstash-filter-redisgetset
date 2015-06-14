require 'logstash/devutils/rspec/spec_helper'
require 'simplecov'

SimpleCov.start
if ENV['CI']=='true'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end