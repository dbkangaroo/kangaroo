type Album {
  id: Int! @pgColumn(name: "AlbumId") @unique
  artistId: Artist! @pgColumn(name: "ArtistId")
  title: String! @pgColumn(name: "Title")
  track: [Track]
}

type Artist {
  album: [Album]
  id: Int! @pgColumn(name: "ArtistId") @unique
  name: String @pgColumn(name: "Name")
}

type Customer {
  address: String @pgColumn(name: "Address")
  city: String @pgColumn(name: "City")
  company: String @pgColumn(name: "Company")
  country: String @pgColumn(name: "Country")
  id: Int! @pgColumn(name: "CustomerId") @unique
  email: String! @pgColumn(name: "Email")
  fax: String @pgColumn(name: "Fax")
  firstName: String! @pgColumn(name: "FirstName")
  invoice: [Invoice]
  lastName: String! @pgColumn(name: "LastName")
  phone: String @pgColumn(name: "Phone")
  postalCode: String @pgColumn(name: "PostalCode")
  state: String @pgColumn(name: "State")
  supportRepId: Employee @pgColumn(name: "SupportRepId")
}

type Employee {
  address: String @pgColumn(name: "Address")
  birthDate: DateTime @pgColumn(name: "BirthDate")
  city: String @pgColumn(name: "City")
  country: String @pgColumn(name: "Country")
  customer: [Customer]
  email: String @pgColumn(name: "Email")
  employee: [Employee]
  id: Int! @pgColumn(name: "EmployeeId") @unique
  fax: String @pgColumn(name: "Fax")
  firstName: String! @pgColumn(name: "FirstName")
  hireDate: DateTime @pgColumn(name: "HireDate")
  lastName: String! @pgColumn(name: "LastName")
  phone: String @pgColumn(name: "Phone")
  postalCode: String @pgColumn(name: "PostalCode")
  reportsTo: Employee @pgColumn(name: "ReportsTo")
  state: String @pgColumn(name: "State")
  title: String @pgColumn(name: "Title")
}

type Genre {
  id: Int! @pgColumn(name: "GenreId") @unique
  name: String @pgColumn(name: "Name")
  track: [Track]
}

type Invoice {
  billingAddress: String @pgColumn(name: "BillingAddress")
  billingCity: String @pgColumn(name: "BillingCity")
  billingCountry: String @pgColumn(name: "BillingCountry")
  billingPostalCode: String @pgColumn(name: "BillingPostalCode")
  billingState: String @pgColumn(name: "BillingState")
  customerId: Customer! @pgColumn(name: "CustomerId")
  invoiceDate: DateTime! @pgColumn(name: "InvoiceDate")
  id: Int! @pgColumn(name: "InvoiceId") @unique
  invoiceLine: [InvoiceLine]
  total: Float! @pgColumn(name: "Total")
}

type InvoiceLine {
  invoiceId: Invoice! @pgColumn(name: "InvoiceId")
  id: Int! @pgColumn(name: "InvoiceLineId") @unique
  quantity: Int! @pgColumn(name: "Quantity")
  trackId: Track! @pgColumn(name: "TrackId")
  unitPrice: Float! @pgColumn(name: "UnitPrice")
}

type MediaType {
  id: Int! @pgColumn(name: "MediaTypeId") @unique
  name: String @pgColumn(name: "Name")
  track: [Track]
}

type Playlist {
  name: String @pgColumn(name: "Name")
  id: Int! @pgColumn(name: "PlaylistId") @unique
  playlistTrack: [PlaylistTrack]
}

type PlaylistTrack @linkTable {
  playlistId: Playlist! @pgColumn(name: "PlaylistId")
  trackId: Track! @pgColumn(name: "TrackId")
}

type Track {
  albumId: Album @pgColumn(name: "AlbumId")
  bytes: Int @pgColumn(name: "Bytes")
  composer: String @pgColumn(name: "Composer")
  genreId: Genre @pgColumn(name: "GenreId")
  invoiceLine: [InvoiceLine]
  mediaTypeId: MediaType! @pgColumn(name: "MediaTypeId")
  milliseconds: Int! @pgColumn(name: "Milliseconds")
  name: String! @pgColumn(name: "Name")
  playlistTrack: [PlaylistTrack]
  id: Int! @pgColumn(name: "TrackId") @unique
  unitPrice: Float! @pgColumn(name: "UnitPrice")
}
