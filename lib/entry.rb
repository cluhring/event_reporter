class Entry
  attr_reader :first_name, :last_name, :home_phone, :id, :reg_date, :street, :city, :state, :zipcode
  def initialize(data)
    @first_name = data[:first_name]
    @last_name = data[:last_name]
    @home_phone = data[:home_phone]
    @id = data[:id]
    @reg_date = data[:reg_date]
    @street = data[:street]
    @city = data [:city]
    @state = data[:state]
    @zipcode = data[:zipcode]
  end

  def name
    "#{@first_name} #{@last_name}"
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
