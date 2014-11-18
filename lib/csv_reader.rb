require "csv"  # => true

def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5, "0")[0..4]
end

def clean_state(state)
  state.upcase
end

# If the phone number is less than 10 digits assume that it is a bad number
# If the phone number is 10 digits assume that it is good
# If the phone number is 11 digits and the first number is 1, trim the 1 and use the first 10 digits
# If the phone number is 11 digits and the first number is not 1, then it is a bad number
# If the phone number is more than 11 digits assume that it is a bad number
# If the phone number has slashes or periods seperating the numbers?

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol

contents.each do |row|
  name = row[:first_name]
  zipcode = clean_zipcode(row[:zipcode])

  legislator_names = legislators.collect do |legislator|
  "#{legislator.first_name} #{legislator.last_name}"
  end
  legislators_string = legislator_names.join(", ")
#collect - Collect takes the array of objects of inputs and generates a new array as the output.
  puts "#{name} #{zipcode}"
end



def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5, "0")[0..4]
end

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol

contents.each do |row|
  name = row[:first_name]
  zipcode = clean_zipcode(row[:zipcode])
  names = names.collect do |name|
  "#{name.first_name} #{name.last_name}"
  name_string = names.join(", ")
  #collect - Collect takes the array of objects of inputs and generates a new array as the output.
  puts "#{name_string} #{zipcode}"
end
end
