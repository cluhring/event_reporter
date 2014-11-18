class Messages
  def self.call
    {
      :intro => "Welcome to Event Reporter.",
      :command_request => "What would you like to do?",
      :not_a_valid_command => "That's not a valid command. Try again.",
      :help => "Choose from among these help messages: find, load, queue,\n
        queue clear, queue count, queue print."
      :quit => "You have now quit.",
      :ending => "You have now closed Event Reporter."
    }
  end

  def help
    :help   #what else on this line?
  end

  # def find
  # end
  def loads
    command == %w(loads)
    #what about help/help?||loads/loads?
    #need to use question mark?
  end

  def queue_count
    command == %w(queue count)
  end

  def queue_clear
    command == %w(queue clear)
  end

  def queue_print
    command == %w(queue print)
  end

  def help_find
    command.downcase == %w(help find)#.downcase (for extension)
  # %w means words with array
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
  end

  def help_queue_print
    command == %w(queue print)
  end

  def help_save_to
    command == %w(help save to).csv   ||
    command == %w(help save to).txt   ||
    command == %w(help save to).json  ||
    command == %w(help save to).xml   ||
    command == %w(help save to).yml
  end

  def command_request
    puts "What would you like to do?"
  end

  def not_a_valid_command
    puts "That's not a valid command."
  end
end
end
