require_relative "crm_database"

db = Database.new
id = 1000

  puts "Welcome to your new contact management database"
  puts "-----------------------------------------------"
  puts 
  puts "What would you like to do: "
  puts "Type one of the following"
  puts "To add a contact          - Add"
  puts "To modify a contact       - Modify"
  puts "To display all contacts   - Display"
  puts "To display a contact      - Contact"
  puts "To display an attribute   - Display"
  puts "To delete a Contact       - Delete"
  puts "To Exit                   - Exit\n\nInput:"

loop do
  # Display the various options
  input = gets.chomp.downcase

  case input
  when "add"
    # Get the various contact attributes from the user and store them to variables
    # Insert those variables in a new contact and add them to the database
    puts "Choose an ID for your contact"
    id = gets.chomp
    puts "First name: "
    firstname = gets.chomp.downcase.to_s
    puts "Last name: "
    lastname = gets.chomp.downcase
    puts "Email: "
    email = gets.chomp.downcase
    puts "Notes: "
    notes = gets.chomp
     contact = { 
      id: id,
      firstname: firstname,
      lastname: lastname,
      email: email, 
      notes: notes
    }

    db.add(contact)
    puts "\n#{contact[:firstname]} was successfully added\n" 


  when "modify"
    # Prompt the user to select an attribute
    # Confirm that they have selected the correct attribute
    # If 'yes', prompt them to type the new value for the attribute
    # Display that the contact was successfully updated to the user 
    puts "Please select an attribute to update?"
    selection = gets.chomp.downcase
    puts "You want to update #{selection}? Yes or No?"
    reply = gets.chomp.downcase
      if reply == 'yes'
        puts "What do you want to change this to?"
        modification = gets.chomp
      else
        puts "Choose another selection"
      end

      db.modify_contact(selection, attribute, modification)

  when "display all"
    # Display all of the contacts in the database to the user
    db.display_all_contacts

  when "display contact"
    # Prompt the user to select a contact by a specific contact attribute (E.g. Khurram)
    # Store the input in a variable and display the corresponding contact

  when "display attribute"
    # Prompt the user to search the database by one of the five attributes (E.g. "ID")
    # Display all of the the contacts by that attribute
  when "delete"
    # Prompt the user to select a contact by a specific contact attribute (E.g. Khurram)
    # Store the input in a variable and display a prompt to confirm "yes" or "no"
    # If 'yes', prompt them to type the new value for the attribute
    # Display that the contact was successfully deleted to the user
    # If 'no', prompt them to type the new value for the attribute
    # Display that the contact could not be found to the user
  when "exit"
    # Exit from the program
  end
end