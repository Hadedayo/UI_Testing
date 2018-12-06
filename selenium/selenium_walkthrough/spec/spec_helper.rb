require 'rspec'
require_relative '../selenium_walkthrough.rb'
require_relative '../lib/Random_generator/random_generator.rb'

RSpec.configure do |config|
  config.formatter = :documentation
end
