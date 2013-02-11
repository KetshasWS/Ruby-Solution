#!/usr/bin/ruby

!include
filename: database.yml

begin

 con.autocommit true

    pst = con.prepare "UPDATE Data SET FName LName = ? WHERE FName = ?"
    pst.execute "Bruce Wayne"
    pst.execute "Anuj Shah"


rescue Mysql::Error => e
    puts e.errno
    puts e.error

ensure
    con.close if con
    pst.close if pst
end
