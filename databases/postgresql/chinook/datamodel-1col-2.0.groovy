model  {
  albumId: Int @id
  artistId: Artist 
  title: String 
  track: Track[]? 
}

model  {
  artistId: Int @id
  album: Album[] 
  name: String? 
}

model  {
  customerId: Int @id
  address: String? 
  city: String? 
  company: String? 
  country: String? 
  email: String 
  fax: String? 
  firstName: String 
  invoice: Invoice[] 
  lastName: String 
  phone: String? 
  postalCode: String? 
  state: String? 
  supportRepId: Employee? 
}

model  {
  employeeId: Int @id
  address: String? 
  birthDate: DateTime? 
  city: String? 
  country: String? 
  customer: Customer[]? 
  email: String? 
  employee: Employee[]? 
  fax: String? 
  firstName: String 
  hireDate: DateTime? 
  lastName: String 
  phone: String? 
  postalCode: String? 
  reportsTo: Employee? 
  state: String? 
  title: String? 
}

model  {
  genreId: Int @id
  name: String? 
  track: Track[]? 
}

model  {
  invoiceId: Int @id
  billingAddress: String? 
  billingCity: String? 
  billingCountry: String? 
  billingPostalCode: String? 
  billingState: String? 
  customerId: Customer 
  invoiceDate: DateTime 
  invoiceLine: InvoiceLine[] 
  total: Float 
}

model  {
  invoiceLineId: Int @id
  invoiceId: Invoice 
  quantity: Int 
  trackId: Track 
  unitPrice: Float 
}

model  {
  mediaTypeId: Int @id
  name: String? 
  track: Track[] 
}

model  {
  playlistId: Int @id
  name: String? 
  playlistTrack: PlaylistTrack[] 
}

model  {
  playlistId: Playlist 
  trackId: Track 
}

model  {
  trackId: Int @id
  albumId: Album? 
  bytes: Int? 
  composer: String? 
  genreId: Genre? 
  invoiceLine: InvoiceLine[] 
  mediaTypeId: MediaType 
  milliseconds: Int 
  name: String 
  playlistTrack: PlaylistTrack[] 
  unitPrice: Float 
}
