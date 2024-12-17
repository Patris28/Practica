 CREATE TABLE makeup (
   makeup_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    age INT
);
SELECT * FROM makeup;

INSERT INTO makeup (name, age)
VALUES
("Huda", 15),
("Maybelline", 30),
("Nyx", 40);

DROP TABLE makeup;

UPDATE makeup
SET 
age= 50
WHERE
makeup_id=3;

CREATE TABLE lips(
lips_id INT PRIMARY KEY AUTO_INCREMENT,
makeup_id INT,
FOREIGN KEY (makeup_id) REFERENCES makeup (makeup_id),
brand VARCHAR(255)
);

select* from lips;
INSERT INTO lips (makeup_id, brand)
VALUES
(1, "Rimmel_London"),
(2, "Maybelline"),
(3, "Catrice");

DROP TABLE lips; 


CREATE TABLE eyes(
eyes_id INT PRIMARY KEY AUTO_INCREMENT,
makeup_id INT,
FOREIGN KEY (makeup_id) REFERENCES makeup (makeup_id),
brand VARCHAR(255)
);
SELECT * FROM eyes;
INSERT INTO eyes (makeup_id, brand)
VALUES
(1, "eyeshadow"),
(2,"eyeliner"),
(3,"mascare");

DROP TABLE eyes;


CREATE TABLE face(
face_id INT PRIMARY KEY AUTO_INCREMENT,
makeup_id INT,
FOREIGN KEY (makeup_id) REFERENCES makeup (makeup_id),
brand VARCHAR (255)
);
SELECT * FROM face;
INSERT INTO face (makeup_id, brand)
VALUES
(1, "blush"),
(2, "contour"),
(3, "highlight");

DROP TABLE face;

CREATE TABLE orders (
   order_id INT PRIMARY KEY AUTO_INCREMENT,
    makeup_id INT,
    FOREIGN KEY (makeup_id) REFERENCES makeup (makeup_id),
   delivery_awb VARCHAR(255)
);
SELECT * FROM orders;
INSERT INTO orders (makeup_id, delivery_awb)
VALUES
(1,"awb12345" ),
(2, "awb32683"),
(1,"awb09986" );

DROP TABLE orders;

-- CREATE TABLE delivery(
-- delivery_id INT PRIMARY KEY AUTO_INCREMENT,
-- order_id INT,
-- FOREIGN KEY (order_id) REFERENCES orders (order_id),
-- delivery_awb VARCHAR(255)
-- );
-- DROP TABLE delivery;

-- SELECT * FROM delivery;
-- INSERT INTO delivery (order_id, delivery_awb)  
-- VALUES
-- ( 1,  "awb12345"),
-- ( 2, "awb32683"),
-- ( 3, "awb09986");

SELECT makeup_id, eyes_id
FROM eyes
WHERE eyes_id= 2
ORDER BY eyes_id;

UPDATE eyes 
SET brand = "shimmer"
WHERE eyes_id = 3;

 UPDATE face 
SET brand = "cream"
WHERE face_id = 2;

ALTER TABLE eyes
ADD colour VARCHAR (255);

UPDATE eyes 
SET colour = "pink"
WHERE eyes_id = 1;

UPDATE eyes 
SET colour = "blue"
WHERE eyes_id = 2;

UPDATE eyes 
SET colour = "red"
WHERE eyes_id = 3;


CREATE TABLE concealer(
concealer_id INT PRIMARY KEY AUTO_INCREMENT,
face_id INT,
FOREIGN KEY (face_id) REFERENCES face (face_id),
brand VARCHAR (255)
);


SELECT * FROM concealer;

INSERT INTO concealer (face_id, brand)
VALUES
(1, "too_faced"),
(2, "huda"),
(3, "essence");

CREATE TABLE provider(
provider_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT,
FOREIGN KEY (order_id) REFERENCES orders (order_id),
last_name VARCHAR (255)
);

SELECT * FROM provider;

INSERT INTO provider (order_id, last_name)
VALUES
(1, "Pop"),
(2, "Ion"),
(3, "Lica");

DROP TABLE provider;