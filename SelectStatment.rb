#!/usr/bin/ruby

!include
filename: database.yml
filename: FormData.rb

begin

    rs = con.query("SELECT * FROM Data WHERE FName=' ' OR LName=' '")
    
   fields = rs.fetch_fields
    puts "%3s %s" % [fields[0].name, fields[1].name]

    rs.each_hash do |row|
        puts "%3s %s" % [row['FName'], row['LName']]
    end

rescue Mysql::Error => e
    puts e.errno
    puts e.error
    
ensure
    con.close if con
end
