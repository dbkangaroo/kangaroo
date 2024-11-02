type Album {
  AlbumId: Int! @id
  artistId: Artist! @db(name: "ArtistId")
  title: String! @db(name: "Title")
  track: [Track]
}

type Artist {
  album: [Album]
  ArtistId: Int! @id
  name: String @db(name: "Name")
}

type Customer {
  address: String @db(name: "Address")
  city: String @db(name: "City")
  company: String @db(name: "Company")
  country: String @db(name: "Country")
  CustomerId: Int! @id
  email: String! @db(name: "Email")
  fax: String @db(name: "Fax")
  firstName: String! @db(name: "FirstName")
  invoice: [Invoice]
  lastName: String! @db(name: "LastName")
  phone: String @db(name: "Phone")
  postalCode: String @db(name: "PostalCode")
  state: String @db(name: "State")
  supportRepId: Employee @db(name: "SupportRepId")
}

type Employee {
  address: String @db(name: "Address")
  birthDate: DateTime @db(name: "BirthDate")
  city: String @db(name: "City")
  country: String @db(name: "Country")
  customer: [Customer]
  email: String @db(name: "Email")
  employee: [Employee]
  EmployeeId: Int! @id
  fax: String @db(name: "Fax")
  firstName: String! @db(name: "FirstName")
  hireDate: DateTime @db(name: "HireDate")
  lastName: String! @db(name: "LastName")
  phone: String @db(name: "Phone")
  postalCode: String @db(name: "PostalCode")
  reportsTo: Employee @db(name: "ReportsTo")
  state: String @db(name: "State")
  title: String @db(name: "Title")
}

type Genre {
  GenreId: Int! @id
  name: String @db(name: "Name")
  track: [Track]
}

type Invoice {
  billingAddress: String @db(name: "BillingAddress")
  billingCity: String @db(name: "BillingCity")
  billingCountry: String @db(name: "BillingCountry")
  billingPostalCode: String @db(name: "BillingPostalCode")
  billingState: String @db(name: "BillingState")
  customerId: Customer! @db(name: "CustomerId")
  invoiceDate: DateTime! @db(name: "InvoiceDate")
  InvoiceId: Int! @id
  invoiceLine: [InvoiceLine]
  total: Float! @db(name: "Total")
}

type InvoiceLine {
  invoiceId: Invoice! @db(name: "InvoiceId")
  InvoiceLineId: Int! @id
  quantity: Int! @db(name: "Quantity")
  trackId: Track! @db(name: "TrackId")
  unitPrice: Float! @db(name: "UnitPrice")
}

type MediaType {
  MediaTypeId: Int! @id
  name: String @db(name: "Name")
  track: [Track]
}

type Playlist {
  name: String @db(name: "Name")
  PlaylistId: Int! @id
  playlistTrack: [PlaylistTrack]
}

type PlaylistTrack @linkTable {
  playlistId: Playlist! @db(name: "PlaylistId")
  trackId: Track! @db(name: "TrackId")
}

type Track {
  albumId: Album @db(name: "AlbumId")
  bytes: Int @db(name: "Bytes")
  composer: String @db(name: "Composer")
  genreId: Genre @db(name: "GenreId")
  invoiceLine: [InvoiceLine]
  mediaTypeId: MediaType! @db(name: "MediaTypeId")
  milliseconds: Int! @db(name: "Milliseconds")
  name: String! @db(name: "Name")
  playlistTrack: [PlaylistTrack]
  TrackId: Int! @id
  unitPrice: Float! @db(name: "UnitPrice")
}
