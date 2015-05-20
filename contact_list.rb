require_relative 'contact'
require 'byebug'

def valid_choice(command = '')
  ['find', 'list', 'new', 'search', 'delete'].include?(command)
end

def add_new_contact 
  puts 'Please enter the first Name'
  fname = $stdin.gets.chomp
  puts 'Please enter the last name'
  lname = $stdin.gets.chomp
  puts 'Please enter the phone number (numbers only)'
  phone_num = $stdin.gets.chomp
  Contact.create(fname, lname, phone_num)
end

def run_helper
  puts <<-HELPER

  Here is a list of available commands:
  new  - Create a new contact in the contact_database
  list - List all contacts
  search - search a contact (eg. search mike)
  find # - Find a contact by index value (eg. find 4)
  delete # - Delete by index number of contact

  HELPER
end

def run_find
  puts Contact.find(ARGV[1])
end

def list_contacts
  puts Contact.list
end

def search_contact
  puts Contact.search(ARGV[1])
end

def delete_contact
  puts Contact.delete(ARGV[1])
end


def run_error_message
  puts 'invalid input. Type \'help\' for acceptable commands'
end

case ARGV[0]
  when 'find'
    run_find
  when 'list'
    list_contacts    
  when 'new'
    add_new_contact
  when 'search'
    search_contact  
  when 'help'
    run_helper
  when 'delete'
    delete_contact
  else
    run_error_message
end