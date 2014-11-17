gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/entry_repository'

class EntryRepositoryTest < Minitest::Test
  def test_retrieve_by_last_name
    entries = [
      { id: '742', reg_date: '1/11/2009 20:56', first_name: 'Leah', last_name: 'Ball', email_address: 'qySKWl12@jumpstartlab.com', home_phone: '509-540-1000', street: '280 Boyer Ave', city: 'Walla Walla', state: "Wa", zipcode: '99362' },
      { id: '3646', reg_date: '1/31/2009 16:43', first_name: 'Natalie', last_name: 'Ball', email_address: 'eqmifink.is@jumpstartlab.com', home_phone: '2023166000', street: '4576 Middleburry College', city: 'Middlebury', stae: 'vt', zipcode: '5753' }
    ]
    repository = EntryRepository.new(entries)
    entries = repository.find_by_last_name("Ball").sort_by { |e| e.first_name }
    assert_equal 2, entries.length

    leah, natalie = entries

    assert_equal "Leah Ball", leah.name
    assert_equal "509-540-1000", leah.home_phone
    assert_equal "qySKWl12@jumpstartlab.com", leah.email_address
    assert_equal "280 Boyer Ave", leah.street
    assert_equal "Walla Walla", leah.city
    assert_equal "WA", leah.state
    assert_equal "99362", leah.zip_code
    assert_equal "1/11/2009 20:56", leah.reg_date
    assert_equal "742", leah.id

    assert_equal "Natalie Ball", natalie.name
    assert_equal "3646", natalie.id
    assert_equal "1/31/2009 16:43", natalie.reg_date
    assert_equal "eqmifink.is@jumpstartlab.com", natalie.email_address
    assert_equal "202-316-6000", natalie.home_phone
    assert_equal "4576 Middleburry College", natalie.street
    assert_equal "Middlebury", natalie.city
    assert_equal "VT", natalie.state
    assert_equal "5753", natalie.zipcode
  end
end
