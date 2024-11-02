type Category @pgTable(name: "categories") {
  id: Int! @pgColumn(name: "category_id") @unique
  categoryName: String! @pgColumn(name: "category_name")
  description: String
  # Type bytea is not supported
  # picture: bytea
  products: [Product]
}

type Customer @pgTable(name: "customers") {
  address: String
  city: String
  companyName: String! @pgColumn(name: "company_name")
  contactName: String @pgColumn(name: "contact_name")
  contactTitle: String @pgColumn(name: "contact_title")
  country: String
  id: ID! @pgColumn(name: "customer_id") @unique
  customerCustomerDemo: [CustomerCustomerDemo]
  fax: String
  orders: [Order]
  phone: String
  postalCode: String @pgColumn(name: "postal_code")
  region: String
}

type CustomerCustomerDemo @linkTable @pgTable(name: "customer_customer_demo") {
  customer: Customer! @pgColumn(name: "customer_id")
  customerType: CustomerDemographic! @pgColumn(name: "customer_type_id")
}

type CustomerDemographic @pgTable(name: "customer_demographics") {
  id: ID! @pgColumn(name: "customer_type_id") @unique
  customerCustomerDemo: [CustomerCustomerDemo]
  customerDesc: String @pgColumn(name: "customer_desc")
}

type Employee @pgTable(name: "employees") {
  address: String
  birthDate: DateTime @pgColumn(name: "birth_date")
  city: String
  country: String
  id: Int! @pgColumn(name: "employee_id") @unique
  employees: [Employee]
  employeeTerritories: [EmployeeTerritory]
  extension: String
  firstName: String! @pgColumn(name: "first_name")
  hireDate: DateTime @pgColumn(name: "hire_date")
  homePhone: String @pgColumn(name: "home_phone")
  lastName: String! @pgColumn(name: "last_name")
  notes: String
  orders: [Order]
  # Type bytea is not supported
  # photo: bytea
  photoPath: String @pgColumn(name: "photo_path")
  postalCode: String @pgColumn(name: "postal_code")
  region: String
  reportsTo: Employee @pgColumn(name: "reports_to")
  title: String
  titleOfCourtesy: String @pgColumn(name: "title_of_courtesy")
}

type EmployeeTerritory @linkTable @pgTable(name: "employee_territories") {
  employee: Employee! @pgColumn(name: "employee_id")
  territory: Territory! @pgColumn(name: "territory_id")
}

type Order @pgTable(name: "orders") {
  customer: Customer @pgColumn(name: "customer_id")
  employee: Employee @pgColumn(name: "employee_id")
  freight: Float
  id: Int! @pgColumn(name: "order_id") @unique
  orderDate: DateTime @pgColumn(name: "order_date")
  orderDetails: [OrderDetail]
  requiredDate: DateTime @pgColumn(name: "required_date")
  shipAddress: String @pgColumn(name: "ship_address")
  shipCity: String @pgColumn(name: "ship_city")
  shipCountry: String @pgColumn(name: "ship_country")
  shipName: String @pgColumn(name: "ship_name")
  shippedDate: DateTime @pgColumn(name: "shipped_date")
  shipPostalCode: String @pgColumn(name: "ship_postal_code")
  shipRegion: String @pgColumn(name: "ship_region")
  shipVia: Shipper @pgColumn(name: "ship_via")
}

type OrderDetail @pgTable(name: "order_details") {
  discount: Float!
  # Multiple ID fields (compound indexes) are not supported
  # id: Order! @pgColumn(name: "order_id") @unique
  # Multiple ID fields (compound indexes) are not supported
  # id: Product! @pgColumn(name: "product_id") @unique
  quantity: Int!
  unitPrice: Float! @pgColumn(name: "unit_price")
}

type Product @pgTable(name: "products") {
  category: Category @pgColumn(name: "category_id")
  discontinued: Int!
  orderDetails: [OrderDetail]
  id: Int! @pgColumn(name: "product_id") @unique
  productName: String! @pgColumn(name: "product_name")
  quantityPerUnit: String @pgColumn(name: "quantity_per_unit")
  reorderLevel: Int @pgColumn(name: "reorder_level")
  supplier: Supplier @pgColumn(name: "supplier_id")
  unitPrice: Float @pgColumn(name: "unit_price")
  unitsInStock: Int @pgColumn(name: "units_in_stock")
  unitsOnOrder: Int @pgColumn(name: "units_on_order")
}

type Region @pgTable(name: "region") {
  id: Int! @pgColumn(name: "region_id") @unique
  regionDescription: String! @pgColumn(name: "region_description")
  territories: [Territory]
}

type Shipper @pgTable(name: "shippers") {
  companyName: String! @pgColumn(name: "company_name")
  orders: [Order]
  phone: String
  id: Int! @pgColumn(name: "shipper_id") @unique
}

type Supplier @pgTable(name: "suppliers") {
  address: String
  city: String
  companyName: String! @pgColumn(name: "company_name")
  contactName: String @pgColumn(name: "contact_name")
  contactTitle: String @pgColumn(name: "contact_title")
  country: String
  fax: String
  homepage: String
  phone: String
  postalCode: String @pgColumn(name: "postal_code")
  products: [Product]
  region: String
  id: Int! @pgColumn(name: "supplier_id") @unique
}

type Territory @pgTable(name: "territories") {
  employeeTerritories: [EmployeeTerritory]
  region: Region! @pgColumn(name: "region_id")
  id: ID! @pgColumn(name: "territory_id") @unique
  territoryDescription: String! @pgColumn(name: "territory_description")
}

type UsState @pgTable(name: "us_states") {
  id: Int! @pgColumn(name: "state_id") @unique
  stateAbbr: String @pgColumn(name: "state_abbr")
  stateName: String @pgColumn(name: "state_name")
  stateRegion: String @pgColumn(name: "state_region")
}
