using northbreeze from '../db/schema';

service Main {
    entity Products as projection on northbreeze.Products;
}