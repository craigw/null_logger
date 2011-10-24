# Null Logger

It's nice to be able to inject a logger into libraries to see what's
going on, but handling all that logging and providing sane defaults can
be rather difficult.

If we use a Null Logger - a logger which does nothing but which supports
the Logger interface - we can pass that responsibility off to those who
care about logging.


## Usage

In your `Gemfile`:

    gem 'null_logger'

In your code you can use the NullLogger instance just like a real
Logger:

    require 'null_logger'
    logger = NullLogger.instance
    logger.debug "Foo"
    logger.info  "Bar"
    logger.warn  "Baz"
    logger.error "Qux"
    logger.fatal "Quux"

Of course, you'll probably want to allow people the option to pass in a
logger, otherwise there's not much point, so your classes end up looking
something like this:

    class Groml
      attr_accessor :logger
      private :logger=, :logger

      def initialize logger = nil
        self.logger = logger || NullLogger.instance
      end

      def execute
        logger.debug "Starting execute run..."
      end
    end


## Authors

Craig R Webster <http://barkingiguana.com/>