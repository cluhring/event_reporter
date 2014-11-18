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

  # def find
  # end
  def loads
    command == %w(loads)
    #outstream.puts "#{file} loaded."
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
    if command.downcase == %w(help find)#.downcase (for extension)
    then puts "Select what to search by: id, reg_date, first_name, last_name, email_address,\n
     home_phone, street, city, state, or zipcode."
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

  def help_save
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
    puts "That's not a valid command. Try again or seek help."
  end

  def file_not_found
    outstream.puts "Think, then type. Pick another file name."
  end
end
end
