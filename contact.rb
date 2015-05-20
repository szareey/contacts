require_relative 'contact_database'
require 'byebug'

class Contact

  attr_reader :first_name, :last_name, :phone_number, :id

  def initialize(first_name, last_name, phone_number, id = nil)
    @first_name = first_name
    @last_name = last_name 
    @phone_number = phone_number
    @id = id.to_i if id
  end
 
  def to_s
    "#{id}. Name: #{first_name} #{last_name}, Phone No.: #{phone_number[0..2]}-#{phone_number[3..5]}-#{phone_number[6..-1]}"
  end
 
  class << self

    FIELDS = ["first_name", "last_name","phone_number","id"]

    def create(first_name, last_name, phone_number)
      ContactDatabase.add_record(first_name, last_name, phone_number)
    end
 
    # Will find and return contact by index
    def find(index)
      row = ContactDatabase.find_record(index)[0]
      Contact.new(*FIELDS.map {|field| row[field]}) if row
    end
    
    # Return the list of contacts, as is
    def list
      ContactDatabase.all
      ContactDatabase.all.map do |row|
        Contact.new(*FIELDS.map {|field| row[field]})
      end
    end
    
    def search(name)
      found_contact = ContactDatabase.search_records(name)
      unless found_contact.values == []
        found_contact.map do |row|
          Contact.new(*FIELDS.map {|field| row[field]})
        end
      else
         "Contact not found"
      end
    end
    
    def delete(id)
      ContactDatabase.delete(id)
      "Successfully deleted"
    end
    
  end
 
end