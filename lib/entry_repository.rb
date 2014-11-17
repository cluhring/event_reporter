require_relative 'entry'
require 'csv'
#require '../event_attendees.csv'

class EntryRepository
  attr_reader :entries

  def self.load_entries(directory)
    file = File.join(directory, 'event_attendees.csv')
    data = CSV.open(file, headers: true, header_converters: :symbol)
    rows = data.map do |row|
      Entry.new(row)
    end
    new(rows)
  end

  def initialize(entries)
    @entries = entries
  end

  def find_by_last_name(name)
    entries.select do |entry|
      entry.last_name == name
    end
  end
end
