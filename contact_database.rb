require 'pg'
 
class ContactDatabase
  
  class << self  
    
    def add_record(fname, lname, num)
      conn.exec_params('INSERT INTO contacts (first_name, last_name, phone_number) VALUES ($1, $2, $3);', [fname, lname, num])
    end

    def all
      conn.exec('SELECT * FROM contacts;')
    end

    def find_record(index)
      conn.exec_params('SELECT * FROM contacts WHERE id=$1', [index])
    end

    #return array that contains the match
    def search_records(match)
      match = match.downcase
      conn.exec_params('SELECT * FROM contacts WHERE lower(first_name)=$1 OR lower(last_name)=$1', [match])
    end

    def delete(index)
      conn.exec_params('DELETE FROM contacts WHERE id=$1', [index])
    end

    def conn
        PG::Connection.new(
        host: 'ec2-174-129-26-115.compute-1.amazonaws.com',
        password: '0g3tRhbDTsQCcf2NyV-getM8BU',
        user: 'hhllaryeegzfca',
        dbname: 'dfckvg5cum1lu3'
      )
    end

  end

end