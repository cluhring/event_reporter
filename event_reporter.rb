require 'cli'
require 'pry'



class EventReporter
  def initialize


    CLI.new($stdin, $stdout).start

  end
end

#EventReporter.new
