CREATE TABLE Visitor
(
  Visitor_id INT NOT NULL,
  Visitor_phone VARCHAR(15) NOT NULL,
  Visitor_type VARCHAR(15) NOT NULL,
  Visitor_name VARCHAR(35) NOT NULL,
  Visitor_email VARCHAR(40) NOT NULL,
  PRIMARY KEY (Visitor_id)
);

CREATE TABLE Event
(
  Event_size VARCHAR(10) NOT NULL,
  Event_public VARCHAR(10) NOT NULL,
  Event_price FLOAT NOT NULL,
  Event_id INT NOT NULL,
  PRIMARY KEY (Event_id)
);

CREATE TABLE Facilities
(
  Facilities_id INT NOT NULL,
  Facilities_age INT,
  Facilities_height FLOAT,
  Facilities_location VARCHAR(10) NOT NULL,
  Employee_id INT NOT NULL,
  PRIMARY KEY (Facilities_id)
);

CREATE TABLE Facilities_mode
(
  F_mode CHAR(10) NOT NULL,
  PRIMARY KEY (F_mode)
);

CREATE TABLE My_Order
(
  Order_date DATE NOT NULL,
  Visitor_id INT NOT NULL,
  Event_id INT NOT NULL,
  PRIMARY KEY (Visitor_id, Event_id),
  FOREIGN KEY (Visitor_id) REFERENCES Visitor(Visitor_id),
  FOREIGN KEY (Event_id) REFERENCES Event(Event_id)
);

CREATE TABLE Play
(
  Play_time VARCHAR(5) NOT NULL,
  Play_date DATE NOT NULL,
  Visitor_id INT NOT NULL,
  Facilities_id INT NOT NULL,
  PRIMARY KEY (Play_time, Play_date, Visitor_id, Facilities_id),
  FOREIGN KEY (Visitor_id) REFERENCES Visitor(Visitor_id),
  FOREIGN KEY (Facilities_id) REFERENCES Facilities(Facilities_id)
);

CREATE TABLE mode_of
(
  Date_mode DATE NOT NULL,
  F_mode CHAR(10) NOT NULL,
  Facilities_id INT NOT NULL,
  PRIMARY KEY (Date_mode,F_mode, Facilities_id),
  FOREIGN KEY (F_mode) REFERENCES Facilities_mode(F_mode),
  FOREIGN KEY (Facilities_id) REFERENCES Facilities(Facilities_id)
);
select * from my_order
