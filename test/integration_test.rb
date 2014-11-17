gem 'minitest'              # => true
require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true

require_relative '../lib/phone_book'  # => true
#require_relative '../event_attendees.csv'  # ~> LoadError: cannot load such file -- /Users/cluhring/Desktop/Chris'_Code/event_reporter/event_attendees.csv

class IntegrationTest < Minitest::Test  # ~> NameError: uninitialized constant MiniTest::Test


  def test_lookup_by_last_name
    phone_book = PhoneBook.new
    entries = phone_book.lookup('Friedman').sort_by {|e| e.first_name}

    assert_equal 3, entries.length
    e1, e2, e3 = entries

    assert_equal "Andrea Friedman", e1.name
    assert_equal "3745", e1.id
    assert_equal "1/31/2009 21:25", e1.reg_date
    assert_equal "muywalksb@jumpstartlab.com", e1.email_address
    assert_equal "313-269-0000", e1.home_phone
    assert_equal "1234 Fake Street", e1.street
    assert_equal "East Lansing", e1.city
    assert_equal "MI", e1.state
    assert_equal "48823", e1.zipcode

    assert_equal "Kevin Friedman", e2.name
    assert_equal "fvnsroek@jumpstartlab.com", e2.email_address
    assert_equal "203-808-5000", e2.home_phone
    assert_equal "1051 Danby Rd", e2.street
    assert_equal "Ithaca", e2.city
    assert_equal "NY", e2.state
    assert_equal "14850", e2.zip_code
    assert_equal "1/20/2009 21:25", e2.reg_date
    assert_equal "1071", e2.id

    assert_equal "Julie Friedman", e3.name
    assert_equal "4231", e3.id
    assert_equal "2/1/2009", e3.reg_date
    assert_equal "yqttwendellwyatt@jumpstartlab.com", e3.email_address
    assert_equal "787-613-9000", e3.home_phone
    assert_equal "Urb. Floral Park Gautier Benitez St. #53", e3.street
    assert_equal "San Juan", e3.city
    assert_equal "PR", e3.state
    assert_equal "00917", e3.zipcode
  end

  def test_lookup_by_id
    phone_book = PhoneBook.new
    entries = phone_book.lookup('3760').sort_by {|e| e.first_name}
    assert_equal 1, entries.length
    entry = entries.first
    assert_equal "Mike", entry.first_name
    assert_equal "Maloney", entry.last_name
    assert_equal "Mike Maloney", entry.name
    assert_equal "4349071000", entry.phone_number #"434-907-1000"
    assert_equal "3760", entry.id
    assert_equal "1/31/09 19:08", entry.reg_date
    assert_equal "ahillemsen1@jumpstartlab.com", entry.email_address
    assert_equal "459 7th Ave. Apt1", entry.street
    assert_equal "Brooklyn", entry.city
    assert_equal "NY", entry.state
    assert_equal "11215", entry.zipcode
  end

end

# >> Run options: --seed 55580
# >>
# >> # Running tests:
# >>
# >>
# >>
# >> [31mF[0m[32ma[0m[33mb[0m[34mu[0m[35ml[0m[36mo[0m[31mu[0m[32ms[0m[33m [0m[34mt[0m[35me[0m[36ms[0m[31mt[0m[32ms[0m in 0.000389s, 0.0000 tests/s, 0.0000 assertions/s.
# >>
# >> 0 tests, 0 assertions, 0 failures, 0 errors, 0 skips

# ~> NameError
# ~> uninitialized constant MiniTest::Test
# ~>
# ~> /Users/cluhring/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/minitest/unit.rb:26:in `const_missing'
# ~> /Users/cluhring/Desktop/Chris'_Code/event_reporter/test/integration_test.rb:8:in `<main>'
