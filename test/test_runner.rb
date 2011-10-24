require 'minitest/unit'
require 'minitest/autorun'

lib = File.expand_path '../../lib/', __FILE__
$:.unshift lib unless $:.include? lib
require 'null_logger'

class MiniTest::Unit::TestCase
  def setup
    NullLogger.reset!
  end
end

Dir[File.dirname(__FILE__) + '/**/test_*.rb'].each do |suite|
  require suite
end
