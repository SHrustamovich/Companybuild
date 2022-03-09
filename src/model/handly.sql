INSERT INTO company(company_name) VALUES
('MUROD BUILDING'),
('AKAY CITY'),
('ZARAFSHON GOLDEN GROUP'),
('DREAM CITY DEVELOPMENT');

INSERT INTO complex(complex_name,company_id) VALUES
('NEST ONE',1),
('MILLENIUM',1),
('CAMBRIDGE RESIDENCE',1),
('YANGI SEBZOR',3),
('ZARAFSHON CITY',3),
('OAZIS',3),
('SKY BUILDS',2),
('BOULEVARD CITY',4),
('GARDEN RESIDENCE',4);

INSERT INTO rooms(room_number,b_square,b_square_price,b_address,complex_id) VALUES
(2,47,2800000,'Shimoliy Olmazor',3),
(3,55,3800000,'Shimoliy Olmazor',3),
(4,71,4000000,'Shimoliy Olmazor',3),
(5,120,4000000,'Shimoliy Olmazor',3),
(2,47,4000000,'yalang`och',2),
(3,55,4100000,'yalang`och',2),
(2,48,3700000,'Sebzor',4),
(3,55,3800000,'Sebzor',4),
(4,71,4000000,'Sebzor',4),
(2,48,3700000,'Bobur ko`cha',5),
(3,55,3800000,'Bobur ko`cha',5),
(4,71,4000000,'Bobur ko`cha',5),
(2,48,3700000,'Yunusobod 4',6),
(3,55,3800000,'Yunusobod 4',6),
(4,71,4000000,'Yunusobod 4',6),
(2,48,6700000,'Botir Zakirov',1),
(3,55,6800000,'Botir Zakirov',1),
(4,71,6000000,'Botir Zakirov',1),
(2,48,5700000,'Toshkent MDS-7',7),
(3,55,5800000,'Toshkent MDS-7',7),
(4,71,5000000,'Toshkent MDS-7',7),
(3,71,5500000,'Toshkent MDS-1',8);

INSERT INTO bank(bank_name,bank_duration,bank_service,b_money) VALUES
('Aloqa bank',10,29,200000000),
('Hamkor bank',20,39,500000000),
('Agra bank',30,23,300000000);