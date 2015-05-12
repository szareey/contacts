require_relative 'contact'
require_relative 'contact_database'
require 'byebug'

ContactDatabase.load_records

def valid_choice(command = '')
  ['find', 'list', 'new', 'search'].include?(command)
end

def add_new_contact
  puts 'Please enter the name (eg. Sana Zareey)'
  name = $stdin.gets.chomp
  puts 'Please enter your email (eg. szareey@gmail.com)'
  email = $stdin.gets.chomp
  Contact.create(name, email)
  puts 'Contact created!'
end

def run_helper
  puts <<-HELPER

  Here is a list of available commands:
  new  - Create a new contact in the contact_database
  list - List all contacts
  search - search a contact (eg. search mike)
  find # - Find a contact by index value (eg. find 4)

  HELPER
end

def run_find
  puts Contact.find(ARGV[1].to_i)
end

def list_contacts
  puts Contact.list
end

def search_contact
  puts Contact.search(ARGV[1])
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
  else
    run_error_message
end