gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'

require_relative '../lib/phone_book'

class IntegrationTest < Minitest::Test
  def test_lookup_by_last_name
    phone_book = PhoneBook.new
    entries = phone_book.lookup(Friedman).sort_by {|e| e.first_name}

    assert_equal 3, entries.length
    e1, e2, e3 = entries

    assert_equal "Kevin Friedman", e1.name
    assert_equal "fvnsroek@jumpstartlab.com", e1.email_address
    assert_equal "203-808-5000", e1.home_phone
    assert_equal "1051 Danby Rd", e1.street
    assert_equal "Ithaca", e1.city
    assert_equal "NY", e1.state
    assert_equal "14850", e1.zip_code
    assert_equal "1/20/2009 21:25", e1.reg_date
    assert_equal "1071", e1.id

    assert_equal "Andrea Friedman", e2.name
    assert_equal "3745", e2.id
    assert_equal "1/31/2009 21:25", e2.reg_date
    assert_equal "muywalksb@jumpstartlab.com", e2.email_address
    assert_equal "313-269-0000", e2.home_phone
    assert_equal "1234 Fake Street", e2.street
    assert_equal "East Lansing", e2.city
    assert_equal "MI", e2.state
    assert_equal "48823", e2.zipcode

    assert_equal "Julie Friedman", e3.name
    assert_equal "4231" e3.id
    assert_equal "2/1/2009", e3.reg_date
    assert_equal "yqttwendellwyatt@jumpstartlab.com", e3.email_address
    assert_equal "787-613-9000", e3.home_phone
    assert_equal "Urb. Floral Park Gautier Benitez St. #53", e3.street
    assert_equal "San Juan", e3.city
    assert_equal "PR", e3.state
    assert_equal "00917", e3.zipcode
end
