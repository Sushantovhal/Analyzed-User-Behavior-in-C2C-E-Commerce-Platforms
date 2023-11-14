USE ecommerce;

-- Question 3
DESC users_data;

-- Question 4
SELECT * FROM users_data LIMIT 100;

-- QUestion 5
SELECT COUNT(DISTINCT country)Distinct_value_country,COUNT(DISTINCT language)DIstinct_value_language FROM users_data;

-- Question 6
SELECT gender, SUM(socialNbFollowers)max_users FROM users_data GROUP BY gender;

-- Question 7
-- a)
SELECT COUNT(*) With_Picture FROM users_data WHERE hasProfilePicture='True';

-- b)

SELECT COUNT(*) Appication FROM users_data WHERE hasAnyApp ='True';

-- c)

SELECT COUNT(*) AnroidApp FROM users_data WHERE hasAndroidApp ='True';

-- d)
SELECT COUNT(*) IosApp FROM users_data WHERE hasIosApp ='True';

-- QUestion 8

SELECT country,SUM(ProductsBought)Total_Buyers FROM users_data WHERE ProductsBought >0 GROUP BY country ORDER BY SUM(ProductsBought) DESC;

-- Question 9
SELECT country,SUM(ProductsSold)Seller FROM users_data  WHERE ProductsSold >0 GROUP BY country ORDER BY SUM(ProductsSold)  ASC;

-- Question 10
SELECT country,MAX(ProductsPassRate) FROM users_data GROUP BY country ORDER BY MAX(ProductsPassRate) DESC LIMIT 10;

-- Question 11
SELECT language, COUNT(*)  users FROM users_data GROUP BY language;

-- Question 12

SELECT gender,SUM(productsWished)Wishlist_or_liked   FROM users_data WHERE  gender ='F'
UNION SELECT gender,SUM(SocialproductsLiked) FROM users_data WHERE gender= 'F';


-- Question 13

SELECT gender,SUM(productsSold)Seller_buyer FROM users_data WHERE  gender ='M'
UNION SELECT gender,SUM(productsBought)Buyer FROM users_data WHERE gender= 'M';

-- Question 14
SELECT country,MAX(productsBought) FROM users_data GROUP BY country ORDER BY MAX(productsBought) DESC LIMIT 1;

-- Question 15
SELECT country ,(productsSold)Seller From users_data WHERE productsSold=0 GROUP BY country LIMIT 10 ;

-- Question 16
SELECT identifierHash,gender,daysSinceLastLogin FROM users_data ORDER BY daysSinceLastLogin ASC LIMIT 110;

-- Question 17
SELECT gender, COUNT(daysSinceLastLogin)Femal_users FROM users_data WHERE gender='F' AND daysSinceLAstLogin>100;

-- QUestion 18
SELECT country,gender, COUNT(*)Femal_users FROM users_data WHERE gender ='F' GROUP BY country ORDER BY country ASC;

-- QUestion 19 
SELECT country,gender, COUNT(*)Femal_users FROM users_data WHERE gender ='M' GROUP BY country ORDER BY country ASC;

-- QUestion 20
SELECT country,gender ,AVG(productsSold), AVG(productsBought) FROM users_data WHERE gender='M' GROUP BY country ; 