require 'cli'

class EventReporter
  def initialize


    CLI.new($stdin, $stdout).start

  end
end

#EventReporter.new
