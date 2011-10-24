require 'null_logger/version'
require 'null_logger/logger'

module NullLogger
  def self.instance
    @instance ||= NullLogger::Logger.new
  end

  def self.reset!
    @instance = nil
  end
end
