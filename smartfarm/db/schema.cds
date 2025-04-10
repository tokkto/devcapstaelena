using { cuid, managed, sap.common.CodeList } from '@sap/cds/common';
namespace sap.capire.suppliers; 

/**
* Suimistros created by Products.
*/
entity Supply : cuid, managed {  
    product     : Association to Products;
    title        : String  @title : 'Title';
    quantity        : String;
    description: String;
    lote: String;
    genre         : Association to Genre default 'M';
}

/**
* Products to create Suppliers.
*/
entity Products : managed { 
    key ID        : String;
    materialNumber     : String;
    description      : String;
    lote          : String;
    stock         : String;
    unitofMeasure         : String;
    suppliers     : Association to many Supply on suppliers.product = $self;
}

entity Genre : CodeList {
key code: String enum {
    male = 'M';
    female = 'H'; 
};
}