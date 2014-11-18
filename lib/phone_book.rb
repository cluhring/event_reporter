require_relative 'entry_repository'

class PhoneBook
  attr_reader :repository
  def initialize(repository = EntryRepository.load_entries('./data'))
    @repository = repository
  end

  def lookup_by_id(x)
    repository.find_by_id(x)
  end

  def lookup_by_reg_date(x)
    repository.find_by_reg_date(x)
  end

  def lookup_by_first_name(x)
    repository.find_by_first_name(x)
  end

  def lookup_by_last_name(x)
    repository.find_by_last_name(x)
  end

  def lookup_by_email_address(x)
    repository.find_by_email_address(x)
  end

  def lookup_by_home_phone(x)
    repository.find_by_home_phone(x)
  end

  def lookup_by_street(x)
    repository.find_by_street(x)
  end

  def lookup_by_city(x)
    repository.find_by_city(x)
  end

  def lookup_by_state(x)
    repository.find_by_state(x)
  end

  def lookup_by_zipcode(x)
    repository.find_by_zipcode(x)
  end

end
