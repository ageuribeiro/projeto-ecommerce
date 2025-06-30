SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA;


-- HumanResources
SELECT * FROM HumanResources.Department;
SELECT * FROM HumanResources.Employee;
SELECT * FROM HumanResources.EmployeeDepartmentHistory;
SELECT * FROM HumanResources.EmployeePayHistory;
SELECT * FROM HumanResources.JobCandidate;
SELECT * FROM HumanResources.Shift;
SELECT * FROM HumanResources.vEmployee;
SELECT * FROM HumanResources.vEmployeeDepartment;
SELECT * FROM HumanResources.vEmployeeDepartmentHistory;
SELECT * FROM HumanResources.vJobCandidate;
SELECT * FROM HumanResources.vJobCandidateEducation;
SELECT * FROM HumanResources.vJobCandidateEmployment;

-- Person
SELECT * FROM Person.Address;
SELECT * FROM Person.AddressType;
SELECT * FROM Person.BusinessEntity;
SELECT * FROM Person.BusinessEntityAddress;
SELECT * FROM Person.BusinessEntityContact;
SELECT * FROM Person.ContactType;
SELECT * FROM Person.CountryRegion;
SELECT * FROM Person.EmailAddress;
SELECT * FROM Person.Password;
SELECT * FROM Person.Person;
SELECT * FROM Person.PersonPhone;
SELECT * FROM Person.PhoneNumberType;
SELECT * FROM Person.StateProvince;
SELECT * FROM Person.vAdditionalContactInfo;
SELECT * FROM Person.vStateProvinceCountryRegion;

-- Production
SELECT * FROM Production.BillOfMaterials;
SELECT * FROM Production.Culture;
SELECT * FROM Production.Document;
SELECT * FROM Production.Illustration;
SELECT * FROM Production.Location;
SELECT * FROM Production.Product;
SELECT * FROM Production.ProductCategory;
SELECT * FROM Production.ProductCostHistory;
SELECT * FROM Production.ProductDescription;
SELECT * FROM Production.ProductDocument;
SELECT * FROM Production.ProductInventory;
SELECT * FROM Production.ProductListPriceHistory;
SELECT * FROM Production.ProductModel;
SELECT * FROM Production.ProductModelIllustration;
SELECT * FROM Production.ProductModelProductDescriptionCulture;
SELECT * FROM Production.ProductPhoto;
SELECT * FROM Production.ProductProductPhoto;
SELECT * FROM Production.ProductReview;
SELECT * FROM Production.ProductSubcategory;
SELECT * FROM Production.ScrapReason;
SELECT * FROM Production.TransactionHistory;
SELECT * FROM Production.TransactionHistoryArchive;
SELECT * FROM Production.UnitMeasure;
SELECT * FROM Production.vProductAndDescription;
SELECT * FROM Production.vProductModelCatalogDescription;
SELECT * FROM Production.vProductModelInstructions;
SELECT * FROM Production.WorkOrder;
SELECT * FROM Production.WorkOrderRouting;

-- Purchasing
SELECT * FROM Purchasing.ProductVendor;
SELECT * FROM Purchasing.PurchaseOrderDetail;
SELECT * FROM Purchasing.PurchaseOrderHeader;
SELECT * FROM Purchasing.ShipMethod;
SELECT * FROM Purchasing.Vendor;
SELECT * FROM Purchasing.vVendorWithAddresses;
SELECT * FROM Purchasing.vVendorWithContacts;

-- Sales
SELECT * FROM Sales.CountryRegionCurrency;
SELECT * FROM Sales.CreditCard;
SELECT * FROM Sales.Currency;
SELECT * FROM Sales.CurrencyRate;
SELECT * FROM Sales.Customer;
SELECT * FROM Sales.PersonCreditCard;
SELECT * FROM Sales.SalesOrderDetail;
SELECT * FROM Sales.SalesOrderHeader;
SELECT * FROM Sales.SalesOrderHeaderSalesReason;
SELECT * FROM Sales.SalesPerson;
SELECT * FROM Sales.SalesPersonQuotaHistory;
SELECT * FROM Sales.SalesReason;
SELECT * FROM Sales.SalesTaxRate;
SELECT * FROM Sales.SalesTerritory;
SELECT * FROM Sales.SalesTerritoryHistory;
SELECT * FROM Sales.ShoppingCartItem;
SELECT * FROM Sales.SpecialOffer;
SELECT * FROM Sales.SpecialOfferProduct;
SELECT * FROM Sales.Store;
SELECT * FROM Sales.vIndividualCustomer;
SELECT * FROM Sales.vPersonDemographics;
SELECT * FROM Sales.vSalesPerson;
SELECT * FROM Sales.vSalesPersonSalesByFiscalYears;
SELECT * FROM Sales.vStoreWithAddresses;
SELECT * FROM Sales.vStoreWithContacts;
SELECT * FROM Sales.vStoreWithDemographics;