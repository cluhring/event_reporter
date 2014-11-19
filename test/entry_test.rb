require 'simplecov'
SimpleCov.start
gem 'minitest', '~> 5.2'    # ~> Gem::LoadError: Could not find 'minitest' (~> 5.2) - did find: [minitest-4.7.5]
require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/entry'

class EntryTest < Minitest::Test
  def test_entry_attributes
    data = {
      first_name: 'Alice',
      last_name: 'Smith',
      home_phone: '111.111.1111',
      id: '1222',
      reg_date: '2/1/2009 14:37',
      street: '21 Jump Street',
      city: 'New York City',
      state: 'NY',
      zipcode: '2627'
    }
    entry = Entry.new(data)

    assert_equal 'Alice', entry.first_name
    assert_equal 'Smith', entry.last_name
    assert_equal 'Alice Smith', entry.name
    assert_equal '111.111.1111', entry.home_phone
    assert_equal '1222', entry.id
    assert_equal '2/1/2009 14:37', entry.reg_date
    assert_equal '21 Jump Street', entry.street
    assert_equal 'New York City', entry.city
    assert_equal 'NY', entry.state
    assert_equal '02627', entry.zipcode #.clean_zipcode
  end
end
