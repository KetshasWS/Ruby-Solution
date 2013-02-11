#!/usr/bin/ruby

!include
filename: database.yml
filename: FormData.rb

begin

con.query "DELETE FROM Data WHERE FName='FN' OR LName='LN'"

rescue Mysql::Error => e
    puts e.errno
    puts e.error
    
ensure
    con.close if con

end
