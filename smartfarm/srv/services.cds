using { sap.capire.suppliers as my } from '../db/schema';

/**
 * Service used by administrators to manage customers and incidents.
 */
service AdminService {
    entity Products as projection on my.Products;
    entity Suppliers as projection on my.Supply;
    }
