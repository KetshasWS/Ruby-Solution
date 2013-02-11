#!/usr/bin/ruby

!include
filename: database.yml

begin

con.query "DELETE FROM Data WHERE FName LName IN (Ketan, Shah)"
con.query "DELETE FROM Data WHERE FName LName IN (Barack, Obama)"

rescue Mysql::Error => e
    puts e.errno
    puts e.error
    
ensure
    con.close if con

end
