require "minitest/pride"
require "minitest/autorun"
require "../lib/messages"


require_relative '../lib/event_reporter'


class EventReporterTest < MiniTest::Test

  # def test_it_does_exist
  #   assert EventReporter
  # end

  def test_help_shows_methods
    puts Messages.help("queue count")

  end

  #test for CLI


  end

     #load event_attendees.csv
     #queue count should return 0
     #find first_name John
    # queue count should return 63
    # queue clear
    # queue count should return 0
    # help should list the commands
    # help queue count should explain the queue count function
    # help queue print should explain the printing function
    #

#end
#integration_test needs to be happy path first, then others afterward
