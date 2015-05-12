
class Contact

  # attr_accessor :name, :email

  def initialize(name, email)
    # TODO: assign local variables to instance variables
    @name = name
    @email = email
  end
 
  def to_s
    # TODO: return string representation of Contact
    "#{@name}, (#{@email})"
  end
 
  ## Class Methods
  class << self

    def create(name, email)
      # TODO: Will initialize a contact as well as add it to the list of contacts
      # current_contact = Contact.new(name, email)
      ContactDatabase.add_record(name, email)
      Contact.new(name, email)
    end
 
    def find(index)
      # TODO: Will find and return contact by index
      found_record = ContactDatabase.find_record(index)
      Contact.new(found_record[0], found_record[1])
    end
 
    def list
      # TODO: Return the list of contacts, as is
      ContactDatabase.all.map do |contact|
      Contact.new(contact[0], contact[1])
      end

    end
    
    def search(phrase)
      found_contact = ContactDatabase.search_records(phrase)
      if found_contact
        Contact.new(found_contact[0], found_contact[1]).to_s
      else
        "Contact not found"
      end
    end
    
  end
 
end