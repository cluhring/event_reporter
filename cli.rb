#require SimpleCov
require_relative 'messages'
require_relative 'cli'
require_relative 'entry'
require_relative 'entry_repository'
require_relative 'event_attendees-5.csv'
require 'terminal-table'
require 'pry'

class CLI

  attr_reader :command, :messages, :instream, :outstream
  attr_accessor :entries

  def initialize
    @command   = ""
    @messages  = Messages.new
    @instream  = instream
    @outstream = outstream
    @queue     = []
    @entries   = []   #this parses the CSV file
  end

  def finished?
    start_with?("quit")
  end

  def queue_count?
    @command == 'queue count'
  end

  def start_with?(word)
    @command.split[0] == word
  end

  def start?
    start_with?("start")
  end

  def load?
    start_with?("load")
  end


  def help?
    start_with?("help")
  end

  def start
    puts messages.intro
    until finished?
      puts messages.command_request
      @command = gets.chomp.downcase
      process_initial_commands
    end
  end

  def count_queue
    @number_of_entries = @entries.count
  end

  def queue_print?
    @command == "queue print"
  end

  def queue_print

  end

  def queue_clear?
    @command == "queue clear"
  end

  def clears_queue
    @entries.clear
  end

  def process_initial_commands

    case
    when finished?
      puts messages.ending
    when load?
      puts messages.loads
      load_entries
    when help?
      if @command.split.length == 1
        puts messages.commands.keys
      else
        help_menu
      end
    when queue_count?
      count_queue
      puts messages.queue_count(@number_of_entries)
    when queue_clear?
      clears_queue
      puts messages.queue_clear
    when queue_print?
      prints_queue
      #puts messages.queue_print

    # when queue print by <attribute>
    #    puts messages.queue_print
    #
    # when queue save to <filename.csv.
    #   outstream.puts messages.queue_save_to # "#{filename}" ?
    #
    # when find <attribute> <criteria>
    #
    else
      puts messages.not_a_valid_command
    end
  end

  def load_entries
    filename = @command.split[1] || "./data/event_attendees.csv"

    CSV.foreach("#{filename}", headers: true, header_converters: :symbol) do |row|
      @entries << Entry.new(row)
    end
  end

  def help_menu
    case
    when help_find?
      puts messages.help_find
    when help_load?
      puts messages.help_load
    when help_queue?
      puts messages.help_queue
    when help_queue_clear?
      puts messages.help_queue_clear
    when help_queue_count?
      puts messages.help_queue_count
    when help_queue_print?
      puts messages.help_queue_print
    end
  end

  private

  def help_queue_print?
    if @command == "queue print"
      messages.help_queue_print
    end
  end

  def help_find? #ask next time about search query
    if @command == "help find"
      messages.help_find
    end
     #need to find first_name John
  end

  def help_load?
    if @command == "help load"
      messages.help_load
    end
  end

  def help_queue?
    if @command == "help queue"
      messages.help_queue
    end
  end

  def help_queue_clear?
    if @command == "help queue clear"
      messages.help_queue_clear
    end
  end

  def help_queue_count?
    if @command == "help queue count"
        messages.help_queue_count
    end
  end

  def help_queue_print?
    if @command == "help queue print"
        messages.help_queue_print
   end
  end
end


cli = CLI.new.start
