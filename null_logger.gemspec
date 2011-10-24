# -*- encoding: utf-8 -*-
lib = File.expand_path '../lib/', __FILE__
$:.unshift lib unless $:.include? lib

require 'null_logger/version'

Gem::Specification.new do |s|
  s.name        = "null_logger"
  s.version     = NullLogger::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Craig R Webster"]
  s.email       = ["craig@barkingiguana.com"]
  s.summary     = "An implementation of the Logger API that does nothing."
  s.description = "Logging is really useful but handling log files " + \
    "and providing sane defaults is hard. Let those that care about" + \
    " the logging configure their own Logger and give it to us, " + \
    "we'll just pass sane messages to that implementation."

  s.files        = Dir.glob("lib/**/*") + %w(README.md)
  s.require_path = 'lib'
end

