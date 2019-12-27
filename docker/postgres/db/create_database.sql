CREATE TABLE user_profile (
  id bigint NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  user_email VARCHAR(50) NOT NULL, 
  user_password VARCHAR(50) NOT NULL,
  CONSTRAINT PK_user_profile PRIMARY KEY (id,user_email)
)