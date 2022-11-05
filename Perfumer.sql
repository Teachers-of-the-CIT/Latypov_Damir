create table Role
(
	Id int primary key identity,
	Name nvarchar(100) not null
)
create table [User]
(
	Id int primary key identity,
	FirstName nvarchar(50) null,
	MiddleName nvarchar(50) null,
	LastName nvarchar(50) null,
	Login nvarchar(100) null,
	Passowrd nvarchar(100) null,
	RoleId int FOREIGN KEY REFERENCES Role(Id) on delete cascade null 
)
create table ImageJournal
(
	Id int primary key identity,
	Name nvarchar(100) not null
)
create table GoodsCategory
(
	Id int primary key identity,
	Name nvarchar(100) not null
)
create table IssuePoint
(
	Id int primary key identity,
	[Index] nvarchar(100) not null,
	[Town] nvarchar(100) not null,
	[Stree] nvarchar(100) not null,
	[House] nvarchar(100) not null
)
create table Goods
(
	Id int primary key identity,
	Sale nvarchar(100) not null,
	Quantity int not null,
	Description nvarchar(100) not null,
	GoodsCategoryId int FOREIGN KEY REFERENCES GoodsCategory(Id) on delete cascade null ,
	ImageId int FOREIGN KEY REFERENCES ImageJournal(Id) on delete cascade null 
)
create table [Order]
(
	Id int primary key identity,
	DateOrder datetime not null,
	DeliveryDate datetime not null,
	IssuePointId int FOREIGN KEY REFERENCES IssuePoint(Id) on delete cascade null ,
	UserId int FOREIGN KEY REFERENCES [User](Id) on delete cascade null ,
	ReceiveCode int null,
	Status varchar(100) null
)
create table [OrderGoods]
(
	Id int primary key identity,
	GoodsId int FOREIGN KEY REFERENCES Goods(Id) on delete cascade null ,
	OrderId int FOREIGN KEY REFERENCES [Order](Id) on delete cascade null ,
	Quantity int null
)