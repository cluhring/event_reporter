gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/mock'
require_relative '../lib/phone_book'

class PhoneBookTest < Minitest::Test
  def test_lookup_by_last_name
    #skip
    repository = Minitest::Mock.new
    phone_book = PhoneBook.new(repository)
    repository.expect(:find_by_last_name, [], ["Ball"])
    phone_book.lookup('Ball')
    repository.verify
  end

  def test_lookup_by_id
    skip
    repository = Minitest::Mock.new
    phone_book = PhoneBook.new(repository)
    repository.expect(:find_by_id, [], ["3760"])
    phone_book.lookup('3760')
    repository.verify
  end

  def test_lookup_by_reg_date
    skip
    repository = Minitest::Mock.new
    phone_book = PhoneBook.new(repository)
    repository.expect(:find_by_reg_date, [], ["2/1/09 2:36"])
    phone_book.lookup('2/1/09 2:36')
    repository.verify
  end

  def test_lookup_by_first_name
    skip
    repository = Minitest::Mock.new
    phone_book = PhoneBook.new(repository)
    repository.expect(:find_by_first_name, [], ["Everett"])
    phone_book.lookup('Everett')
    repository.verify
  end

  def test_lookup_by_email_address
    skip
    repository = Minitest::Mock.new
    phone_book = PhoneBook.new(repository)
    repository.expect(:find_by_email_address, [], ["bqeager@jumpstartlab.com"])
    phone_book.lookup('bqeager@jumpstartlab.com')
    repository.verify
  end

  def test_lookup_by_home_phone
    skip
    repository = Minitest::Mock.new
    phone_book = PhoneBook.new(repository)
    repository.expect(:find_by_home_phone, [], ["617-202-3000"])
    phone_book.lookup('617-202-3000')
    repository.verify
  end

  def test_lookup_by_street
    skip
    repository = Minitest::Mock.new
    phone_book = PhoneBook.new(repository)
    repository.expect(:find_by_street, [], ["45 Mt. Auburn Street"])
    phone_book.lookup('45 Mt. Auburn Street')
    repository.verify
  end

  def test_lookup_by_city
    skip
    repository = Minitest::Mock.new
    phone_book = PhoneBook.new(repository)
    repository.expect(:find_by_city, [], ["Cambridge"])
    phone_book.lookup('Cambridge')
    repository.verify
  end

  def test_lookup_by_state
    skip
    repository = Minitest::Mock.new
    phone_book = PhoneBook.new(repository)
    repository.expect(:find_by_state, [], ["MA"])
    phone_book.lookup('MA')
    repository.verify
  end

  def test_lookup_by_zipcode
    skip
    repository = Minitest::Mock.new
    phone_book = PhoneBook.new(repository)
    repository.expect(:find_by_zipcode, [], ["02138"])
    phone_book.lookup('02138')
    repository.verify
  end

end
