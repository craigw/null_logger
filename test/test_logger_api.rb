class TestLoggerApi < MiniTest::Unit::TestCase
  require 'logger'
  (Logger.instance_methods.sort - Logger.methods).sort.each do |method_name|
    define_method "test_#{method_name}_is_supported" do
      instance = NullLogger.instance
      assert instance.respond_to? method_name
    end
  end
end
