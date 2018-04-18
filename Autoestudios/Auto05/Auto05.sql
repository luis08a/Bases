CREATE table Product (productID number(11), name varchar(50) not null, productNumber varchar(25) not null, color varchar(15) not null, standardCost NUMBER(10,2) not null, listPrice number(10,2) not null, size varchar(5), weight number(8,2), productCategoryID number(11), productModelID number(11), sellStartDate date not null, sellEndDate date, discontinuedDate date, thumbnailPhotoFileName varchar(50), detail XMLType);

ALTER TABLE Product add constraint pk_Product primary key(productID);

DROP TABLE Product;