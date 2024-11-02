type Category @db(name: "categories") {
  category_id: Int! @id
  categoryName: String! @db(name: "category_name")
  description: String
  # Type bytea is not supported
  # picture: bytea
  products: [Product]
}

type Customer @db(name: "customers") {
  address: String
  city: String
  companyName: String! @db(name: "company_name")
  contactName: String @db(name: "contact_name")
  contactTitle: String @db(name: "contact_title")
  country: String
  customer_id: ID! @id
  customerCustomerDemo: [CustomerCustomerDemo]
  fax: String
  orders: [Order]
  phone: String
  postalCode: String @db(name: "postal_code")
  region: String
}

type CustomerCustomerDemo @db(name: "customer_customer_demo") @linkTable {
  customer: Customer! @db(name: "customer_id")
  customerType: CustomerDemographic! @db(name: "customer_type_id")
}

type CustomerDemographic @db(name: "customer_demographics") {
  customer_type_id: ID! @id
  customerCustomerDemo: [CustomerCustomerDemo]
  customerDesc: String @db(name: "customer_desc")
}

type Employee @db(name: "employees") {
  address: String
  birthDate: DateTime @db(name: "birth_date")
  city: String
  country: String
  employee_id: Int! @id
  employees: [Employee]
  employeeTerritories: [EmployeeTerritory]
  extension: String
  firstName: String! @db(name: "first_name")
  hireDate: DateTime @db(name: "hire_date")
  homePhone: String @db(name: "home_phone")
  lastName: String! @db(name: "last_name")
  notes: String
  orders: [Order]
  # Type bytea is not supported
  # photo: bytea
  photoPath: String @db(name: "photo_path")
  postalCode: String @db(name: "postal_code")
  region: String
  reportsTo: Employee @db(name: "reports_to")
  title: String
  titleOfCourtesy: String @db(name: "title_of_courtesy")
}

type EmployeeTerritory @db(name: "employee_territories") @linkTable {
  employee: Employee! @db(name: "employee_id")
  territory: Territory! @db(name: "territory_id")
}

type Order @db(name: "orders") {
  customer: Customer @db(name: "customer_id")
  employee: Employee @db(name: "employee_id")
  freight: Float
  order_id: Int! @id
  orderDate: DateTime @db(name: "order_date")
  orderDetails: [OrderDetail]
  requiredDate: DateTime @db(name: "required_date")
  shipAddress: String @db(name: "ship_address")
  shipCity: String @db(name: "ship_city")
  shipCountry: String @db(name: "ship_country")
  shipName: String @db(name: "ship_name")
  shippedDate: DateTime @db(name: "shipped_date")
  shipPostalCode: String @db(name: "ship_postal_code")
  shipRegion: String @db(name: "ship_region")
  shipVia: Shipper @db(name: "ship_via")
}

type OrderDetail @db(name: "order_details") {
  discount: Float!
  # Multiple ID fields (compound indexes) are not supported
  # order_id: Order! @id
  # Multiple ID fields (compound indexes) are not supported
  # product_id: Product! @id
  quantity: Int!
  unitPrice: Float! @db(name: "unit_price")
}

type Product @db(name: "products") {
  category: Category @db(name: "category_id")
  discontinued: Int!
  orderDetails: [OrderDetail]
  product_id: Int! @id
  productName: String! @db(name: "product_name")
  quantityPerUnit: String @db(name: "quantity_per_unit")
  reorderLevel: Int @db(name: "reorder_level")
  supplier: Supplier @db(name: "supplier_id")
  unitPrice: Float @db(name: "unit_price")
  unitsInStock: Int @db(name: "units_in_stock")
  unitsOnOrder: Int @db(name: "units_on_order")
}

type Region @db(name: "region") {
  region_id: Int! @id
  regionDescription: String! @db(name: "region_description")
  territories: [Territory]
}

type Shipper @db(name: "shippers") {
  companyName: String! @db(name: "company_name")
  orders: [Order]
  phone: String
  shipper_id: Int! @id
}

type Supplier @db(name: "suppliers") {
  address: String
  city: String
  companyName: String! @db(name: "company_name")
  contactName: String @db(name: "contact_name")
  contactTitle: String @db(name: "contact_title")
  country: String
  fax: String
  homepage: String
  phone: String
  postalCode: String @db(name: "postal_code")
  products: [Product]
  region: String
  supplier_id: Int! @id
}

type Territory @db(name: "territories") {
  employeeTerritories: [EmployeeTerritory]
  region: Region! @db(name: "region_id")
  territory_id: ID! @id
  territoryDescription: String! @db(name: "territory_description")
}

type UsState @db(name: "us_states") {
  state_id: Int! @id
  stateAbbr: String @db(name: "state_abbr")
  stateName: String @db(name: "state_name")
  stateRegion: String @db(name: "state_region")
}
