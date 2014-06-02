create database if not exists mrdrive;
use mrdrive;
drop table if exists statements;
drop table if exists words;
drop table if exists occurences;

create table statements (  
  id int not null auto_increment,  
  word varchar(100) not null,  
  definition text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci not null,  
  primary key (id)  
);

create table words (  
  id int not null auto_increment,  
  word varchar(100) not null,  
  primary key (id)  
);

create table occurences (  
  id int not null auto_increment,  
  statement_id int not null,
  word_id int not null,  
  number int not null,  
  primary key (id)  
);

CREATE INDEX SIndex ON statements (word);
CREATE INDEX WIndex ON words (word);
CREATE INDEX OIndex ON occurences (statement_id,word_id);
