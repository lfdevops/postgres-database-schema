-- Diagram code for dbdiagram.io

-- one-to-one
Table restaurant {
  id integer [primary key]
  name varchar(20)
  description varchar(100)
  rating decimal
  telephone char(10)
  hours varchar(100)
  address_id integer [ref: > address.id, unique] 
}

Table address {
  id integer [primary key]
  street_number varchar(10)
  street_name varchar(20)
  city varchar(15)
  state varchar(15)
  google_map_link varchar(50)
}

Table category {
  id char(2) [primary key]
  name varchar(255)
  description text
}

Table dish {
  id integer [primary key]
  name varchar(50)
  description varchar(200)
  hot_and_spicy boolean
}

-- one-to-many
Table review {
  id integer [primary key]
  rating decimal
  description varchar(100)
  date date
  restaurant_id integer [ref: > restaurant.id] 
}

-- many-to-many
Table categories_dishes {
  category_id char(2) [ref: > category.id]
  dish_id integer [ref: > dish.id]
  price money
  Indexes {
    (category_id, dish_id) [pk]
  }
}


