class Messages
  def response
    {
      :not_a_valid_command => "That's not a valid command. Try again or seek help.",
      :help => "Choose from among these help messages: find, load, queue,\n
        queue clear, queue count, queue print.",
      :quit => "You have now quit.",
      :ending => "You have now closed Event Reporter."
    }
  end

  def commands
    {
      'queue clear' => 'clears out queue',
      'queue count' => 'gives number of items in queue',
      'queue print' => 'shows items in queue',
      'find' => 'finds item you searched and shows all information related to item',
      'load <filename>' => 'loads file so you can access the data',
      'queue' => 'does something with the queue'
    }
  end

  def intro
    "Welcome to Event Reporter."
  end

  def command_request
    "What would you like to do?"
  end

  def loads
    "Loading your queue"
  end

  def queue_count(number_of_entries)
    "There are #{number_of_entries} entries in the queue."
  end


  def help_queue_count
    commands["queue count"]
  end

  def help_queue_print
    commands["queue print"]
  end

  def help_find
    commands["find"]
  end

  def help_load
    commands["load <filename>"]
  end

  def help_queue_clear
    commands["queue clear"]
  end

  def help_queue
    commands["queue"]
  end

  def queue_clear
    "the queue is now cleared"
  end

  def queue_print
    command["queue print"]
  end

  def command_request
    puts "What would you like to do?"
  end

  def not_a_valid_command
    puts "That's not a valid command. Try again."
  end

  def file_not_found
    puts "Pick another file name."
  end
end
