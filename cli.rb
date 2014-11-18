require_relative 'messages'
require 'pry'
#binding.pry
#place below somewhere as needed

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
    @command == "start"
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
      outstream.puts "You've started."
    when instructions?
      outstream.puts messages.help
    when finished?
      outstream.puts messages.ending
    when loads?
      outstream.puts messages.loads
        #an if/else statement here?
    when queue_count
      #messages.results.count
      outstream.puts messages.queue_count
    when queue clear
      outstream.puts messages.queue_clear
    when queue print
      outstream.puts messages.queue_print


      when queue print by <attribute>

      outstream.puts messages.queue_print...#what here?

    when queue save to <filename.csv.
      outstream.puts messages.queue_save_to # "#{filename}" ?

    when find <attribute> <criteria>



    else
      outstream.puts messages.not_a_valid_command
    end
  end

    case
  #why have question marks in cli and not messages? help_find  vs. help_find?
    when help_find?
      outstream.puts messages.help_find
    when help_load?
      outstream.puts messages.help_load
    when help_queue?
      outstream.puts messages.help_queue
    when help_queue_clear?
      outstream.puts messages.help_queue_clear
    when help_queue_count?
      outstream.puts messages.help_queue_count
    when help_queue_print?
      outstream.puts messages.help_queue_print
    when help_save#how to do this?
      outstream.puts messages.help_save
    end
end
