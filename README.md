dictionary
==========
Require 'Rubygems' to install the following gems: 'active_record', 'mysql2', 'csv'

Indexing
==========
The 'indexing' application is in charge of adding datas to the database
In its assets, 'create_database.sql' is the script to create the database
The connection parameters of the database can be changed in the 'connect_database.rb' file
'indexing.rb' should be launched only one time ( ./indexing.rb) and can take a dozen of minutes.

Launcher
==========
./launcher to execute the launcher and give a word as an input
The result comes immediately with the duration of execution.
