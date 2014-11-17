require_relative 'messages'

class CLI

  attr_reader :command, :messages, :instream, :outstream

  def initialize(instream, outstream)
    @command = ""
    @messages = Messages.new
    @instream = instream
    @outstream = outstream
  end

  def finished?
    @command == "quit"
  end

  def start?
    #@start == "start"
  end

  def instructions?
    @command == "help"
  end

  def start
    outstream.puts messages.intro
    until finished?
      outstream.puts messages.command_request
      @command = instream.gets.strip
      process_initial_commands
    end
  end

  def process_initial_commands
    case
    when start?
      outstream.puts " anything" #Got To This Point."
    when instructions?
      outstream.puts messages.help  #don't forget to add help <command>
    when finished?
      outstream.puts messages.ending
    #when load?

    #when queue count

    #when queue clear

    #when queue print

    #when queue print by <attribute>

  # when queue save to <filename.csv.

  #when find <attribute> <criteria>

    else
      outstream.puts messages.not_a_valid_command
    end
  end
#end
