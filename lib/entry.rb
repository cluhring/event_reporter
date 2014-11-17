class Entry
  attr_reader :first_name, :last_name, :email_address, :home_phone, :id, :reg_date, :street, :city, :state, :zipcode
  def initialize(data)
    @first_name = data[:first_name]
    @last_name = data[:last_name]
    @home_phone = data[:home_phone]
    @email_address = data[:email_address]
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

end
