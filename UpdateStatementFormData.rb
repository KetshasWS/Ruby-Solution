#!/usr/bin/ruby

!include
filename: database.yml
filename: FormData.rb

begin

 con.autocommit true

    pst = con.prepare "UPDATE Data SET FName LName = ? WHERE FName = ?"
    pst.execute "FN LN"


rescue Mysql::Error => e
    puts e.errno
    puts e.error

ensure
    con.close if con
    pst.close if pst
end
