$:.unshift(File.dirname(__FILE__) + '/../lib')
require 'support'
require 'shoulda/matchers'

RSpec.configure do |config|
  config.order = :random
end
