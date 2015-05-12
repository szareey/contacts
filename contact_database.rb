## TODO: Implement CSV reading/writing
require 'csv'

class ContactDatabase
  ## Class Methods
  @@records = []
  @@contacts_fname = 'contacts.csv'
  
  class << self  

    def load_records
      @@records= CSV.read(@@contacts_fname)
    end
    
    def add_record(name, email)
      CSV.open(@@contacts_fname, 'a') {|csv| csv << [name, email]}
      @@records.push(["#{name}", "#{email}"])
    end

    def all
      @@records
    end

    def find_record(index)
      @@records[index]
    end

    #return array that contains the match
    def search_records(match)
      found = nil
      # byebug
      @@records.each_with_index {|record, index| found = index if record.include?(match)}
      @@records[found.to_i]
    end

  end
end