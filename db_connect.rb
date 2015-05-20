
conn = PG::Connection.new(
        host: 'ec2-174-129-26-115.compute-1.amazonaws.com',
        password: '0g3tRhbDTsQCcf2NyV-getM8BU',
        user: 'hhllaryeegzfca',
        dbname: 'dfckvg5cum1lu3'
      )

conn.exec ("
    CREATE TABLE contacts
    id  integer PRIMARY KEY ,
    first_name  varchar(20) 
  ")