require 'active_record'
require 'mysql2' 

ActiveRecord::Base.establish_connection(
  adapter:  'mysql2',
  database: 'mrdrive',
  username: 'root',
  password: 'admin',
  host:     'localhost',
  encoding: 'utf8mb4',
  collation: 'utf8mb4_unicode_ci'
)