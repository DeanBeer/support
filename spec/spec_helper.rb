$:.unshift(File.dirname(__FILE__) + '/../lib')
require 'nrb/support'

RSpec.configure do |config|
  config.order = :random
end
