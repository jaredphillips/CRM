class Contact
  attr_accessor :id, :firstname, :lastname, :email, :notes

  def initialize(contact)
    @id = contact[:id]
    @firstname = contact[:firstname]
    @lastname = contact[:lastname]
    @email = contact[:email]
    @notes = contact[:notes]
  end

  def display_contact
    
  end
end

