/*******************************************************************************
   Populate Tables
********************************************************************************/

INSERT INTO [dbo].[Genre] ([GenreId], [Name]) VALUES (1, N'Rock');
INSERT INTO [dbo].[Genre] ([GenreId], [Name]) VALUES (2, N'Jazz');
INSERT INTO [dbo].[Genre] ([GenreId], [Name]) VALUES (3, N'Metal');
INSERT INTO [dbo].[Genre] ([GenreId], [Name]) VALUES (4, N'Alternative & Punk');
INSERT INTO [dbo].[Genre] ([GenreId], [Name]) VALUES (5, N'Rock And Roll');
INSERT INTO [dbo].[Genre] ([GenreId], [Name]) VALUES (6, N'Blues');
INSERT INTO [dbo].[Genre] ([GenreId], [Name]) VALUES (7, N'Latin');
INSERT INTO [dbo].[Genre] ([GenreId], [Name]) VALUES (8, N'Reggae');
INSERT INTO [dbo].[Genre] ([GenreId], [Name]) VALUES (9, N'Pop');
INSERT INTO [dbo].[Genre] ([GenreId], [Name]) VALUES (10, N'Soundtrack');

INSERT INTO [dbo].[MediaType] ([MediaTypeId], [Name]) VALUES (1, N'MPEG audio file');
INSERT INTO [dbo].[MediaType] ([MediaTypeId], [Name]) VALUES (2, N'Protected AAC audio file');
INSERT INTO [dbo].[MediaType] ([MediaTypeId], [Name]) VALUES (3, N'Protected MPEG-4 video file');
INSERT INTO [dbo].[MediaType] ([MediaTypeId], [Name]) VALUES (4, N'Purchased AAC audio file');
INSERT INTO [dbo].[MediaType] ([MediaTypeId], [Name]) VALUES (5, N'AAC audio file');

INSERT INTO [dbo].[Artist] ([ArtistId], [Name]) VALUES (1, N'AC/DC');
INSERT INTO [dbo].[Artist] ([ArtistId], [Name]) VALUES (2, N'Accept');
INSERT INTO [dbo].[Artist] ([ArtistId], [Name]) VALUES (3, N'Aerosmith');
INSERT INTO [dbo].[Artist] ([ArtistId], [Name]) VALUES (4, N'Alanis Morissette');
INSERT INTO [dbo].[Artist] ([ArtistId], [Name]) VALUES (5, N'Alice In Chains');
INSERT INTO [dbo].[Artist] ([ArtistId], [Name]) VALUES (6, N'Antônio Carlos Jobim');
INSERT INTO [dbo].[Artist] ([ArtistId], [Name]) VALUES (7, N'Apocalyptica');
INSERT INTO [dbo].[Artist] ([ArtistId], [Name]) VALUES (8, N'Audioslave');
INSERT INTO [dbo].[Artist] ([ArtistId], [Name]) VALUES (9, N'BackBeat');
INSERT INTO [dbo].[Artist] ([ArtistId], [Name]) VALUES (10, N'Billy Cobham');

INSERT INTO [dbo].[Album] ([AlbumId], [Title], [ArtistId]) VALUES (1, N'For Those About To Rock We Salute You', 1);
INSERT INTO [dbo].[Album] ([AlbumId], [Title], [ArtistId]) VALUES (2, N'Balls to the Wall', 2);
INSERT INTO [dbo].[Album] ([AlbumId], [Title], [ArtistId]) VALUES (3, N'Restless and Wild', 2);
INSERT INTO [dbo].[Album] ([AlbumId], [Title], [ArtistId]) VALUES (4, N'Let There Be Rock', 1);
INSERT INTO [dbo].[Album] ([AlbumId], [Title], [ArtistId]) VALUES (5, N'Big Ones', 3);
INSERT INTO [dbo].[Album] ([AlbumId], [Title], [ArtistId]) VALUES (6, N'Jagged Little Pill', 4);
INSERT INTO [dbo].[Album] ([AlbumId], [Title], [ArtistId]) VALUES (7, N'Facelift', 5);
INSERT INTO [dbo].[Album] ([AlbumId], [Title], [ArtistId]) VALUES (8, N'Warner 25 Anos', 6);
INSERT INTO [dbo].[Album] ([AlbumId], [Title], [ArtistId]) VALUES (9, N'Plays Metallica By Four Cellos', 7);
INSERT INTO [dbo].[Album] ([AlbumId], [Title], [ArtistId]) VALUES (10, N'Audioslave', 8);

INSERT INTO [dbo].[Track] ([TrackId], [Name], [AlbumId], [MediaTypeId], [GenreId], [Composer], [Milliseconds], [Bytes], [UnitPrice]) VALUES (1, N'For Those About To Rock (We Salute You)', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 343719, 11170334, 0.99);
INSERT INTO [dbo].[Track] ([TrackId], [Name], [AlbumId], [MediaTypeId], [GenreId], [Milliseconds], [Bytes], [UnitPrice]) VALUES (2, N'Balls to the Wall', 2, 2, 1, 342562, 5510424, 0.99);
INSERT INTO [dbo].[Track] ([TrackId], [Name], [AlbumId], [MediaTypeId], [GenreId], [Composer], [Milliseconds], [Bytes], [UnitPrice]) VALUES (3, N'Fast As a Shark', 3, 2, 1, N'F. Baltes, S. Kaufman, U. Dirkscneider & W. Hoffman', 230619, 3990994, 0.99);
INSERT INTO [dbo].[Track] ([TrackId], [Name], [AlbumId], [MediaTypeId], [GenreId], [Composer], [Milliseconds], [Bytes], [UnitPrice]) VALUES (4, N'Restless and Wild', 3, 2, 1, N'F. Baltes, R.A. Smith-Diesel, S. Kaufman, U. Dirkscneider & W. Hoffman', 252051, 4331779, 0.99);
INSERT INTO [dbo].[Track] ([TrackId], [Name], [AlbumId], [MediaTypeId], [GenreId], [Composer], [Milliseconds], [Bytes], [UnitPrice]) VALUES (5, N'Princess of the Dawn', 3, 2, 1, N'Deaffy & R.A. Smith-Diesel', 375418, 6290521, 0.99);
INSERT INTO [dbo].[Track] ([TrackId], [Name], [AlbumId], [MediaTypeId], [GenreId], [Composer], [Milliseconds], [Bytes], [UnitPrice]) VALUES (6, N'Put The Finger On You', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 205662, 6713451, 0.99);
INSERT INTO [dbo].[Track] ([TrackId], [Name], [AlbumId], [MediaTypeId], [GenreId], [Composer], [Milliseconds], [Bytes], [UnitPrice]) VALUES (7, N'Let''s Get It Up', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 233926, 7636561, 0.99);
INSERT INTO [dbo].[Track] ([TrackId], [Name], [AlbumId], [MediaTypeId], [GenreId], [Composer], [Milliseconds], [Bytes], [UnitPrice]) VALUES (8, N'Inject The Venom', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 210834, 6852860, 0.99);
INSERT INTO [dbo].[Track] ([TrackId], [Name], [AlbumId], [MediaTypeId], [GenreId], [Composer], [Milliseconds], [Bytes], [UnitPrice]) VALUES (9, N'Snowballed', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 203102, 6599424, 0.99);
INSERT INTO [dbo].[Track] ([TrackId], [Name], [AlbumId], [MediaTypeId], [GenreId], [Composer], [Milliseconds], [Bytes], [UnitPrice]) VALUES (10, N'Evil Walks', 1, 1, 1, N'Angus Young, Malcolm Young, Brian Johnson', 263497, 8611245, 0.99);

INSERT INTO [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [Title], [BirthDate], [HireDate], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email]) VALUES (1, N'Adams', N'Andrew', N'General Manager', '1962/2/18', '2002/8/14', N'11120 Jasper Ave NW', N'Edmonton', N'AB', N'Canada', N'T5K 2N1', N'+1 (780) 428-9482', N'+1 (780) 428-3457', N'andrew@chinookcorp.com');
INSERT INTO [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [Title], [ReportsTo], [BirthDate], [HireDate], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email]) VALUES (2, N'Edwards', N'Nancy', N'Sales Manager', 1, '1958/12/8', '2002/5/1', N'825 8 Ave SW', N'Calgary', N'AB', N'Canada', N'T2P 2T3', N'+1 (403) 262-3443', N'+1 (403) 262-3322', N'nancy@chinookcorp.com');
INSERT INTO [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [Title], [ReportsTo], [BirthDate], [HireDate], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email]) VALUES (3, N'Peacock', N'Jane', N'Sales Support Agent', 2, '1973/8/29', '2002/4/1', N'1111 6 Ave SW', N'Calgary', N'AB', N'Canada', N'T2P 5M5', N'+1 (403) 262-3443', N'+1 (403) 262-6712', N'jane@chinookcorp.com');
INSERT INTO [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [Title], [ReportsTo], [BirthDate], [HireDate], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email]) VALUES (4, N'Park', N'Margaret', N'Sales Support Agent', 2, '1947/9/19', '2003/5/3', N'683 10 Street SW', N'Calgary', N'AB', N'Canada', N'T2P 5G3', N'+1 (403) 263-4423', N'+1 (403) 263-4289', N'margaret@chinookcorp.com');
INSERT INTO [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [Title], [ReportsTo], [BirthDate], [HireDate], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email]) VALUES (5, N'Johnson', N'Steve', N'Sales Support Agent', 2, '1965/3/3', '2003/10/17', N'7727B 41 Ave', N'Calgary', N'AB', N'Canada', N'T3B 1Y7', N'1 (780) 836-9987', N'1 (780) 836-9543', N'steve@chinookcorp.com');
INSERT INTO [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [Title], [ReportsTo], [BirthDate], [HireDate], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email]) VALUES (6, N'Mitchell', N'Michael', N'IT Manager', 1, '1973/7/1', '2003/10/17', N'5827 Bowness Road NW', N'Calgary', N'AB', N'Canada', N'T3B 0C5', N'+1 (403) 246-9887', N'+1 (403) 246-9899', N'michael@chinookcorp.com');
INSERT INTO [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [Title], [ReportsTo], [BirthDate], [HireDate], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email]) VALUES (7, N'King', N'Robert', N'IT Staff', 6, '1970/5/29', '2004/1/2', N'590 Columbia Boulevard West', N'Lethbridge', N'AB', N'Canada', N'T1K 5N8', N'+1 (403) 456-9986', N'+1 (403) 456-8485', N'robert@chinookcorp.com');
INSERT INTO [dbo].[Employee] ([EmployeeId], [LastName], [FirstName], [Title], [ReportsTo], [BirthDate], [HireDate], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email]) VALUES (8, N'Callahan', N'Laura', N'IT Staff', 6, '1968/1/9', '2004/3/4', N'923 7 ST NW', N'Lethbridge', N'AB', N'Canada', N'T1H 1Y8', N'+1 (403) 467-3351', N'+1 (403) 467-8772', N'laura@chinookcorp.com');

INSERT INTO [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Company], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email], [SupportRepId]) VALUES (1, N'Luís', N'Gonçalves', N'Embraer - Empresa Brasileira de Aeronáutica S.A.', N'Av. Brigadeiro Faria Lima, 2170', N'São José dos Campos', N'SP', N'Brazil', N'12227-000', N'+55 (12) 3923-5555', N'+55 (12) 3923-5566', N'luisg@embraer.com.br', 3);
INSERT INTO [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Address], [City], [Country], [PostalCode], [Phone], [Email], [SupportRepId]) VALUES (2, N'Leonie', N'Köhler', N'Theodor-Heuss-Straße 34', N'Stuttgart', N'Germany', N'70174', N'+49 0711 2842222', N'leonekohler@surfeu.de', 5);
INSERT INTO [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Address], [City], [State], [Country], [PostalCode], [Phone], [Email], [SupportRepId]) VALUES (3, N'François', N'Tremblay', N'1498 rue Bélanger', N'Montréal', N'QC', N'Canada', N'H2G 1A7', N'+1 (514) 721-4711', N'ftremblay@gmail.com', 3);
INSERT INTO [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Address], [City], [Country], [PostalCode], [Phone], [Email], [SupportRepId]) VALUES (4, N'Bjørn', N'Hansen', N'Ullevålsveien 14', N'Oslo', N'Norway', N'0171', N'+47 22 44 22 22', N'bjorn.hansen@yahoo.no', 4);
INSERT INTO [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Company], [Address], [City], [Country], [PostalCode], [Phone], [Fax], [Email], [SupportRepId]) VALUES (5, N'František', N'Wichterlová', N'JetBrains s.r.o.', N'Klanova 9/506', N'Prague', N'Czech Republic', N'14700', N'+420 2 4172 5555', N'+420 2 4172 5555', N'frantisekw@jetbrains.com', 4);
INSERT INTO [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Address], [City], [Country], [PostalCode], [Phone], [Email], [SupportRepId]) VALUES (6, N'Helena', N'Holý', N'Rilská 3174/6', N'Prague', N'Czech Republic', N'14300', N'+420 2 4177 0449', N'hholy@gmail.com', 5);
INSERT INTO [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Address], [City], [Country], [PostalCode], [Phone], [Email], [SupportRepId]) VALUES (7, N'Astrid', N'Gruber', N'Rotenturmstraße 4, 1010 Innere Stadt', N'Vienne', N'Austria', N'1010', N'+43 01 5134505', N'astrid.gruber@apple.at', 5);
INSERT INTO [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Address], [City], [Country], [PostalCode], [Phone], [Email], [SupportRepId]) VALUES (8, N'Daan', N'Peeters', N'Grétrystraat 63', N'Brussels', N'Belgium', N'1000', N'+32 02 219 03 03', N'daan_peeters@apple.be', 4);
INSERT INTO [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Address], [City], [Country], [PostalCode], [Phone], [Email], [SupportRepId]) VALUES (9, N'Kara', N'Nielsen', N'Sønder Boulevard 51', N'Copenhagen', N'Denmark', N'1720', N'+453 3331 9991', N'kara.nielsen@jubii.dk', 4);
INSERT INTO [dbo].[Customer] ([CustomerId], [FirstName], [LastName], [Company], [Address], [City], [State], [Country], [PostalCode], [Phone], [Fax], [Email], [SupportRepId]) VALUES (10, N'Eduardo', N'Martins', N'Woodstock Discos', N'Rua Dr. Falcão Filho, 155', N'São Paulo', N'SP', N'Brazil', N'01007-010', N'+55 (11) 3033-5446', N'+55 (11) 3033-4564', N'eduardo@woodstock.com.br', 4);

INSERT INTO [dbo].[Invoice] ([InvoiceId], [CustomerId], [InvoiceDate], [BillingAddress], [BillingCity], [BillingCountry], [BillingPostalCode], [Total]) VALUES (1, 2, '2009/1/1', N'Theodor-Heuss-Straße 34', N'Stuttgart', N'Germany', N'70174', 1.98);
INSERT INTO [dbo].[Invoice] ([InvoiceId], [CustomerId], [InvoiceDate], [BillingAddress], [BillingCity], [BillingCountry], [BillingPostalCode], [Total]) VALUES (2, 4, '2009/1/2', N'Ullevålsveien 14', N'Oslo', N'Norway', N'0171', 3.96);
INSERT INTO [dbo].[Invoice] ([InvoiceId], [CustomerId], [InvoiceDate], [BillingAddress], [BillingCity], [BillingCountry], [BillingPostalCode], [Total]) VALUES (3, 8, '2009/1/3', N'Grétrystraat 63', N'Brussels', N'Belgium', N'1000', 5.94);
INSERT INTO [dbo].[Invoice] ([InvoiceId], [CustomerId], [InvoiceDate], [BillingAddress], [BillingCity], [BillingState], [BillingCountry], [BillingPostalCode], [Total]) VALUES (4, 14, '2009/1/6', N'8210 111 ST NW', N'Edmonton', N'AB', N'Canada', N'T6G 2C7', 8.91);
INSERT INTO [dbo].[Invoice] ([InvoiceId], [CustomerId], [InvoiceDate], [BillingAddress], [BillingCity], [BillingState], [BillingCountry], [BillingPostalCode], [Total]) VALUES (5, 23, '2009/1/11', N'69 Salem Street', N'Boston', N'MA', N'USA', N'2113', 13.86);
INSERT INTO [dbo].[Invoice] ([InvoiceId], [CustomerId], [InvoiceDate], [BillingAddress], [BillingCity], [BillingCountry], [BillingPostalCode], [Total]) VALUES (6, 37, '2009/1/19', N'Berger Straße 10', N'Frankfurt', N'Germany', N'60316', 0.99);
INSERT INTO [dbo].[Invoice] ([InvoiceId], [CustomerId], [InvoiceDate], [BillingAddress], [BillingCity], [BillingCountry], [BillingPostalCode], [Total]) VALUES (7, 38, '2009/2/1', N'Barbarossastraße 19', N'Berlin', N'Germany', N'10779', 1.98);
INSERT INTO [dbo].[Invoice] ([InvoiceId], [CustomerId], [InvoiceDate], [BillingAddress], [BillingCity], [BillingCountry], [BillingPostalCode], [Total]) VALUES (8, 40, '2009/2/1', N'8, Rue Hanovre', N'Paris', N'France', N'75002', 1.98);
INSERT INTO [dbo].[Invoice] ([InvoiceId], [CustomerId], [InvoiceDate], [BillingAddress], [BillingCity], [BillingCountry], [BillingPostalCode], [Total]) VALUES (9, 42, '2009/2/2', N'9, Place Louis Barthou', N'Bordeaux', N'France', N'33000', 3.96);
INSERT INTO [dbo].[Invoice] ([InvoiceId], [CustomerId], [InvoiceDate], [BillingAddress], [BillingCity], [BillingState], [BillingCountry], [Total]) VALUES (10, 46, '2009/2/3', N'3 Chatham Street', N'Dublin', N'Dublin', N'Ireland', 5.94);