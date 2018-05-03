/*Creación tabla ProductDescription*/
create table ProductDescription(productDescriptionID	NUMBER(11)		
                                ,Description VARCHAR(255));

create table ProductModelProductDescription(ProductModelID NUMBER(11,0)
                                    , ProductDescriptionID NUMBER(11,6)
                                    , Culture CHAR(6));
create table ProductCategory(ProductCategoryID NUMBER(11,0)
                            , ParentProductCategoryID NUMBER(11,0)
                            , Name VARCHAR(50));
                            
create table ProductModel(ProductModelID NUMBER(11,0)
                            , Name VARCHAR(50)
                            ,CatalogDescription VARCHAR(255));
                            
create table Product(ProductID NUMBER(11,0)
                    , Name VARCHAR(50)
                    , ProductNumber VARCHAR(25)
                    , Color VARCHAR(15)
                    , StandardCost NUMBER(10,2)
                    , ListPrice NUMBER(10,2)
                    , Sze VARCHAR(5)
                    , Weight NUMBER(10,2)
                    , ProductModelID NUMBER(11,0)
                    , ProductCategoryID NUMBER(11,0)
                    , SellStartDate date
                    , SellEndDate date
                    , DiscontinueDate date
                    , ThumbnailPhotoFileName VARCHAR(50));
                    
create table SalesOrderDetail(SalesOrderID NUMBER(11,0)
                        , SalesOrderDetailID NUMBER(11,0)		
                        , OrderQty NUMBER(11,0)
                        , ProductID NUMBER(10,2)
                        , UnitPrice NUMBER(10,2)
                        , UnitPriceDiscount NUMBER(10,2));
                        
create table SalesOrderHeader(SalesOrderID	Number(11,0)
                                , RevisionNumber	Number(11,0)
                                , OrderDate	date
                                , DueDate	date
                                , ShipDate	date
                                , Status	Number(11)
                                , OnlineOrderFlag char(1)	
                                , SalessOrderNumber varchar(15)
                                , PurchaseOrderNumber varchar(15)
                                , AccountNumber	varchar(25)
                                , CustomerID	Number(11,0)	
                                , ShipToAddressID Number(11,0)
                                , BillToAddressID Number(11,0)
                                , ShipMethod	varchar(50)
                                , CreditCardApprovalCode	varchar(15)
                                , SubTotal Number(10,2)
                                , TaxAmt	Number(10,2)
                                , Freight Number(10,2)
                                , Commnt	varchar(255));
                                
create table Address(AddressID NUMBER(11,0)
                    , AddressLine1 VARCHAR(60)
                    , AddressLine2 VARCHAR(60)
                    , City VARCHAR(60)
                    , StateProvince VARCHAR(60)
                    , CountyRegion VARCHAR(50)
                    , PostalCode VARCHAR(15) ) ;
                    
create table CustomerAddress(CustomerID NUMBER(11,0)
                            , AddressID NUMBER(11,0)
                            , AddressType VARCHAR(50) );
                            
create table Customer(CustomerID NUMBER(11,0)	
                    , NameStyle	varchar(50)
                    , Title	varchar(8)
                    , FirstName	varchar(50)	
                    , MiddleName	varchar(50)	
                    , LastName	varchar(50)
                    , Suffix	varchar(10)
                    , CompanyName	varchar(128)
                    , SalesPerson	varchar(256)
                    , EmailAddress	varchar(50)
                    , Phone	varchar(25)
                    , PasswordHash	varchar(128)
                    , PasswordSalt varchar(10) );