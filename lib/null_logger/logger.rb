module NullLogger
  class Logger
    # To get the Logger API you can run this:
    #   (Logger.instance_methods.sort - Logger.methods).sort
    [ :<<, :add, :close, :datetime_format,
      :datetime_format=, :debug, :debug?, :error, :error?, :fatal,
      :fatal?, :formatter, :formatter=, :info, :info?, :level, :level=,
      :log, :progname, :progname=, :sev_threshold, :sev_threshold=,
      :unknown, :warn, :warn? ].each do |method_name|
      define_method method_name do |*args| end
    end
  end
end
