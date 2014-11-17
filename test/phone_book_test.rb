gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/mock'
require_relative '../lib/phone_book'

class PhoneBookTest < Minitest::Test
  def test_lookup_by_last_name
    repository = Minitest::Mock.new
    phone_book = PhoneBook.new(repository)
    repository.expect(:find_by_last_name, [], ["Ball"])
    phone_book.lookup('Ball')
    repository.verify
  end

  def test_lookup_by_id
    repository = Minitest::Mock.new
    phone_book = PhoneBook.new(repository)
    repository.expect(:find_by_id, [], ["3760"])
    phone_book.lookup('3760')
    repository.verify
  end
end
