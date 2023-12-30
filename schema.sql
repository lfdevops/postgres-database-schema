CREATE TABLE address (
  id integer PRIMARY KEY,
  street_number varchar(10),
  street_name varchar(20),
  city varchar(20),
  state varchar(20),
  google_map_link varchar(50)
);

CREATE TABLE restaurant (
  id integer PRIMARY KEY,
  name varchar(20),
  description varchar(100),
  rating decimal,
  telephone char(10),
  hours varchar(100),
  address_id integer UNIQUE,
  FOREIGN KEY (address_id) REFERENCES address(id)
);

CREATE TABLE dish (
  id integer PRIMARY KEY, 
  name varchar(50),
  description varchar(200),
  hot_and_spicy boolean
);

CREATE TABLE category (
  id char(2) PRIMARY KEY,
  name varchar(255),
  description text
);

CREATE TABLE review (
  id integer PRIMARY KEY,
  rating decimal,
  description varchar(100),
  date date,
  restaurant_id integer,
  FOREIGN KEY (restaurant_id) REFERENCES restaurant(id)
);

CREATE TABLE categories_dishes (
  category_id char(2),
  dish_id integer,
  price money,
  PRIMARY KEY (category_id, dish_id),
  FOREIGN KEY (category_id) REFERENCES category(id),
  FOREIGN KEY (dish_id) REFERENCES dish(id)
);

