CREATE SEQUENCE seq_ProductCategory
START WITH 1
INCREMENT BY 1
NOMAXVALUE;

CREATE TRIGGER trig_PCID
  BEFORE INSERT ON ProductCategory
  FOR EACH ROW
  BEGIN
    SELECT seq_ProductCategory.nextval INTO :new.ProductCategoryID FROM dual;
    :new.ParentProductCategoryID:=NULL;
  END
;

DROP TRIGGER trig_PCID;

CREATE SEQUENCE seq_PMID
START WITH 1
INCREMENT BY 1
NOMAXVALUE;

CREATE TRIGGER trig_PMID
  BEFORE INSERT ON ProductModel
  FOR EACH ROW
  BEGIN
    SELECT seq_PCID.nextval INTO :new.ProductModelID FROM dual;
  END
;

DROP TRIGGER trig_PMID;
