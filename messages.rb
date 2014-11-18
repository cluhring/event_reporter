class Messages
  def self.call
    {
      :intro => "Welcome to Event Reporter.",
      :command_request => "What would you like to do?",
      :not_a_valid_command => "That's not a valid command. Try again or seek help.",
      :help => "Choose from among these help messages: find, load, queue,\n
        queue clear, queue count, queue print."
      :quit => "You have now quit.",
      :ending => "You have now closed Event Reporter."
    }
  end

  def help
    :help   #what else on this line?
  end

  def find

  end

  def loads
    command == %w(loads)
    #outstream.puts "#{file} loaded."
    #what about help/help?||loads/loads?
  end

  def queue_count
    command == %w(queue count)
    #return 0
    #return 63
    #return "#{number}"
  end

  def queue_clear
    command == %w(queue clear)
  end

  def queue_print
    command == %w(queue print)
  end



  def command_request
    puts "What would you like to do?"
  end

  def not_a_valid_command
    puts "That's not a valid command. Try again or seek help."
  end

  def file_not_found
    outstream.puts "Think, then type. Pick another file name."
  end
end
end
