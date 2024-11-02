model Category {
  categoryId: Int      @id
  categoryName: String 
  description: String? 
  picture: Bytea?      
  products: Product[]? 
}

model Customer {
  customerId: String                           @id
  address: String?                             
  city: String?                                
  companyName: String                          
  contactName: String?                         
  contactTitle: String?                        
  country: String?                             
  customerCustomerDemo: CustomerCustomerDemo[] 
  fax: String?                                 
  orders: Order[]?                             
  phone: String?                               
  postalCode: String?                          
  region: String?                              
}

model CustomerCustomerDemo {
  customer: Customer                
  customerType: CustomerDemographic 
}

model CustomerDemographic {
  customerTypeId: String                       @id
  customerCustomerDemo: CustomerCustomerDemo[] 
  customerDesc: String?                        
}

model Employee {
  employeeId: Int                          @id
  address: String?                         
  birthDate: DateTime?                     
  city: String?                            
  country: String?                         
  employees: Employee[]?                   
  employeeTerritories: EmployeeTerritory[] 
  extension: String?                       
  firstName: String                        
  hireDate: DateTime?                      
  homePhone: String?                       
  lastName: String                         
  notes: String?                           
  orders: Order[]?                         
  photo: Bytea?                            
  photoPath: String?                       
  postalCode: String?                      
  region: String?                          
  reportsTo: Employee?                     
  title: String?                           
  titleOfCourtesy: String?                 
}

model EmployeeTerritory {
  employee: Employee   
  territory: Territory 
}

model Order {
  orderId: Int                @id
  customer: Customer?         
  employee: Employee?         
  freight: Float?             
  orderDate: DateTime?        
  orderDetails: OrderDetail[] 
  requiredDate: DateTime?     
  shipAddress: String?        
  shipCity: String?           
  shipCountry: String?        
  shipName: String?           
  shippedDate: DateTime?      
  shipPostalCode: String?     
  shipRegion: String?         
  shipVia: Shipper?           
}

model OrderDetail {
  productId: Product @id
  orderId: Order     @id
  discount: Float    
  quantity: Int      
  unitPrice: Float   
}

model Product {
  productId: Int              @id
  category: Category?         
  discontinued: Int           
  orderDetails: OrderDetail[] 
  productName: String         
  quantityPerUnit: String?    
  reorderLevel: Int?          
  supplier: Supplier?         
  unitPrice: Float?           
  unitsInStock: Int?          
  unitsOnOrder: Int?          
}

model Region {
  regionId: Int             @id
  regionDescription: String 
  territories: Territory[]  
}

model Shipper {
  shipperId: Int      @id
  companyName: String 
  orders: Order[]?    
  phone: String?      
}

model Supplier {
  supplierId: Int       @id
  address: String?      
  city: String?         
  companyName: String   
  contactName: String?  
  contactTitle: String? 
  country: String?      
  fax: String?          
  homepage: String?     
  phone: String?        
  postalCode: String?   
  products: Product[]?  
  region: String?       
}

model Territory {
  territoryId: String                      @id
  employeeTerritories: EmployeeTerritory[] 
  region: Region                           
  territoryDescription: String             
}

model MeState {
  stateId: Int         @id
  stateAbbr: String?   
  stateName: String?   
  stateRegion: String? 
}
