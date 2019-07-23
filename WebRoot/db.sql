create database users;
use users;
CREATE TABLE users (
  UserID bigint(20) NOT NULL auto_increment,
  UserName varchar(20) default NULL,
  UserPassword varchar(20) default NULL,
  MobilePhoneNumber varchar(30) not null,
  Age varchar(20) not null,
  Zip varchar(20) not null,
  PRIMARY KEY (UserID)
) ;

