require 'pg'
require_relative '../passwords'
begin

    con = PG.connect :dbname => 'bookmark_manager', :user => ENV['POSTGRE_USERNAME']
    
    rs = con.exec "SELECT * FROM bookmarks"

    rs.each do |row|
      puts "%s %s" % [ row['id'], row['url'] ]
    end
    
rescue PG::Error => e

    puts e.message 
    
ensure

    rs.clear if rs
    con.close if con
    
end