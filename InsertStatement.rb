#!/usr/bin/ruby

!include
filename: database.yml

begin

con.query("INSERT INTO Data(FName LName) VALUES('Freddie Flintstone')")
con.query("INSERT INTO Data(FName LName) VALUES('Fathead Stinker')")

rescue Mysql::Error => e
    puts e.errno
    puts e.error
    
ensure
    con.close if con

end
