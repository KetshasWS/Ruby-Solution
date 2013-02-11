#!/usr/bin/ruby

!include
filename: database.yml
filename: FormData.rb

begin

con.query("INSERT INTO Data(FName LName) VALUES('FN LN')")

rescue Mysql::Error => e
    puts e.errno
    puts e.error
    
ensure
    con.close if con

end
