require_relative 'entry_repository'

class PhoneBook
  attr_reader :repository
  def initialize(repository = EntryRepository.load_entries('./data'))
    @repository = repository
  end

  def lookup(name)
    repository.find_by_last_name(name)
  end

  # def lookup(name)
  #   # Hash[row].select { |k,v| search_criteria[k] } == search_criteria
  #   id, reg_date, first_name, last_name, email_address, home_phone, street, city, state, zipcode = name.split(',')
  #   if id
  #     repository.find_by_id(id)
  #   elsif reg_date
  #     repository.find_by_reg_date(reg_date)
  #   elsif first_name
  #     repository.find_by_first_name(first_name)
  #   else last_name
  #     repository.find_by_last_name(last_name)
  #   end
  # end
    # elsif email_address
    #   repository.find_by_email_address(email_address)
    # elsif home_phone
    #   repository.find_by_home_phone(home_phone)
    # elsif street
    #   repository.find_by_street(street)
    # elsif city
    #   repository.find_by_city(city)
    # elsif state
    #   repository.find_by_state(state)
    # else zipcode
    #   repository.find_by_zipcode(zipcode)
    # end
  # end

end
