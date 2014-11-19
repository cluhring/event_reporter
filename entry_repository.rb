require_relative 'entry'
require 'csv'

class EntryRepository
  attr_reader :entries

  def self.load_entries(directory)
    file = File.join(directory, 'event_attendees-5.csv')
    data = CSV.open(file, headers: true, header_converters: :symbol)
    rows = data.map do |row|
      Entry.new(row)
    end
    new(rows)
  end

  def initialize(entries)
    @entries = entries
  end

  def find_by_id(x)
    entries.select do |entry|
      entry.id == x
    end
  end

  def find_by_reg_date(x)
    entries.select do |entry|
      entry.reg_date == x
    end
  end

  def find_by_first_name(x)
    entries.select do |entry|
      entry.first_name == x
    end
  end

  def find_by_last_name(x)
    entries.select do |entry|
      entry.last_name == x
    end
  end

  def find_by_email_address(x)
    entries.select do |entry|
      entry.email_address == x
    end
  end

  def find_by_home_phone(x)
    entries.select do |entry|
      entry.home_phone == x
    end
  end

  def find_by_street(x)
    entries.select do |entry|
      entry.street == x
    end
  end

  def find_by_city(x)
    entries.select do |entry|
      entry.city == x
    end
  end

  def find_by_state(x)
    entries.select do |entry|
      entry.state == x
    end
  end

  def find_by_zipcode(x)
    entries.select do |entry|
      entry.zipcode == x
    end
  end

end
