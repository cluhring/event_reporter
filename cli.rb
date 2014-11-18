require_relative 'messages'
require_relative 'cli'
require_relative 'entry'
require_relative 'entry_repository'
#require_relative 'phone_book'
require 'pry'
#binding.pry


class CLI

  attr_reader :command, :messages, :instream, :outstream

  def initialize(instream, outstream)
    @command = ""
    @messages = Messages.new
    @instream = instream
    @outstream = outstream
    @queue     = []
    @entries   = []   #this is what parses the CSV file
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

  def load?
    @command.start_with?("load")
  end

  def help?
    @command.start_with?("help")
  end

  def start
    outstream.puts messages.intro
    until finished?
      outstream.puts messages.command_request
      @command = instream.gets.strip.downcase
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
    when load?
      outstream.puts messages.loads
      load_entries
    when help?
      help_menu
        #an if/else statement here?
    when queue_count
      #messages.results.count
      outstream.puts messages.queue_count
    when queue clear
      outstream.puts messages.queue_clear
    when queue print
      outstream.puts messages.queue_print
    #  when queue print by <attribute>
    #   outstream.puts messages.queue_print...#what here?
    #
    # when queue save to <filename.csv.
    #   outstream.puts messages.queue_save_to # "#{filename}" ?
    #
    # when find <attribute> <criteria>
    #
    else
      outstream.puts messages.not_a_valid_command
    end
  end

  def load_entries
    filename = @command.split[1] || "event_attendees.csv"
    CSV.foreach("./data/#{filename}", headers: true, header_converters: :symbol) do |row|
      @entries << Entry.new(row)
    end
  end

  def help_menu
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

  private

  def help_queue_print?
    @command.split[1..-1] == ["queue", "print"] # %w(queue print)
  end

  def help_find #ask about search query
    @command.split[0..1] ==
    then puts "Select what to search by: id, reg_date, first_name, last_name, email_address,\n
     home_phone, street, city, state, or zipcode."
     #need to find first_name John
  end

  def help_load
    command == %w(help load)
  end

  def help_queue
    command == %w(help queue)
  end

  def help_queue_clear
    command == %w(queue clear)
  end

  def help_queue_count
    command == %w(queue count)
    #needs to explain how queue count works
  end

  def help_queue_print
    command == %w(queue print)
    #needs to explain how printing function works
  end

  def help_save
    command == %w(help save to).csv   ||
    command == %w(help save to).txt   ||
    command == %w(help save to).json  ||
    command == %w(help save to).xml   ||
    command == %w(help save to).yml
  end


end




end
git
