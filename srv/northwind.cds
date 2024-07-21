using northwind from './external/northwind.cds';

service northwindSampleService {
    @readonly
    entity Categories as projection on northwind.Categories
    {        key CategoryID, CategoryName, Description    }    
;
    @readonly
    entity Products as projection on northwind.Products
    {        key ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued     }    
;
}