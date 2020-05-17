

use SIS11BC2;

create table Menus (
Id_menus int not null primary key identity (1,1),
platillo varchar (20) not null,
cantidad int not null,
precio money not null
);

insert into Menus (platillo, cantidad, precio)
values('pupusas', 3, 0.50),  
        ('sopa de caracol' , 1 , 3.50);
		select * from Menus;
