require 'pg'

conn = PG::Connection.new(
        host: 'ec2-174-129-26-115.compute-1.amazonaws.com',
        password: '0g3tRhbDTsQCcf2NyV-getM8BU',
        user: 'hhllaryeegzfca',
        dbname: 'dfckvg5cum1lu3'
      )

conn.exec("SELECT * FROM *;")

CREATE TABLE contacts(
  ID INT  PRIMARY KEY  NOT NULL
  FIRST_NAME char(20)
  LAST_NAME char(20)
  PHONE_NUM char(20)
  )
