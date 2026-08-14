CREATE TABLE `shopkeeper`.`productlist` (`id` INT(2) NOT NULL AUTO_INCREMENT , `name` VARCHAR(10) NOT NULL , `category` VARCHAR(10) NOT NULL , `price` INT(5) NOT NULL , `in_stock` VARCHAR(3) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;
INSERT INTO productlist VALUES ('1','Burger','Fastfood','50','YES'),('2','FriedChicken','Fastfood','200','YES'),('3','Mandhi','Arabic','999','YES'),('4','Madhooth','Arabic','799','NO'),('5','MalabaraHoneyChicken','Indian','299','YES');
SELECT * FROM `productlist`
SELECT DISTINCT category FROM `productlist`;
SELECT * FROM `productlist` WHERE in_stock='YES' AND price<500;
SELECT * FROM `productlist` WHERE in_stock='NO' OR price>1000;
SELECT name,price FROM `productlist` ORDER BY price DESC;
Expand Requery Edit Explain Profiling Bookmark Database : shopkeeper Queried time : 12:30:10
SELECT ((price*0.18)+price) AS price_with_tax FROM productlist;