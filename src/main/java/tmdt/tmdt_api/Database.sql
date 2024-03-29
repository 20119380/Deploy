create table SANPHAM(
ID serial not null primary key,
tensp varchar(50),
giasp int,
anh varchar(500),
mota varchar(5000),
id_type int,
FOREIGN KEY (id_type) REFERENCES categorytype(id)
);
create table account (
	id  serial not null,
	username varchar(20) primary key,
	pass varchar(200),
	email varchar(50),
	role varchar(20)
);
alter table account drop auth 
create table cart(
	id_cart serial primary key,
	id_sanpham int,
	id_donhang int,
    FOREIGN KEY (id_sanpham) REFERENCES sanpham(id),
    FOREIGN KEY (id_donhang) REFERENCES donhang(id_donhang)
);
create table donhang(
	id_donhang serial primary key,
	thanhtien int,
	id_customer int,
	FOREIGN KEY (id_customer) REFERENCES customer(id)
);
create table customer(
	id serial primary key,
	fullname varchar(50),
	address varchar(500),
	phone varchar(10),
	username varchar(20),
	FOREIGN KEY (username) REFERENCES account(username)
);
create table comment(
	id serial not null primary key,
	username varchar(20),
	comment varchar(2000),
	phone varchar(10),
	FOREIGN KEY (username) REFERENCES account(username)
);
create table categorytype(
	id serial not null primary key,
	loaisp varchar(50));
alter table cart add tensp varchar(50);
insert into sanpham(id,tensp,giasp,anh,mota,id_type)
values(1,'Cafe',10000,'Image/cafe.jpg','Là sự lựa chọn hoàn hảo cho những ai yêu thích cà phê nhưng lại không thích vị đắng nguyên bản của cà phê đen truyền thống. Hương vị cà phê mang dấu ấn sáng tạo rất Việt Nam. Cái khéo trong sự kết hợp giữa các nguyên liệu cao cấp: cà phê phin, sữa béo và sữa đặc cho ra đời một thức uống tròn vị đắng, ngọt, bùi. Vị ngọt thấm vào đầu lưỡi, vị đắng lắng đọng nơi cuống họng vừa đủ để người thưởng thức tỉnh táo suốt cả ngày dài.',2),
	(2,'Sinh tố',10000,'Image/sinhto.jpg','Sinh tố dâu là món được chế biến từ quả dâu tây kết hợp cùng với đá, sữa và đường. Dâu tây là một loại cây thuộc họ thân thảo sống nhiều năm. Cây dâu tây có rất nhiều là và thường mọc gần nhau, tùy vào từng môi trường mà loại cây này sinh sống hoặc tùy đặc tính của từng giống cây mà dâu tây có các đặc điểm khác nhau. Nhưng hầu hết các giống dâu tây đều có lá kép, mép lá có răng cưa, quả dâu tây khi còn non có màu trắng và khi quả già thì chuyển màu đỏ đất.',3);
insert into sanpham(id,tensp,giasp,anh,mota,id_type)
values(3,'Trà sữa',10000,'Image/trasua.jpg','Trà sữa là một loại thức uống rất quen thuộc với nhiều quốc gia đặc biệt trong đó có Việt Nam. Đây là một trong loại đồ uống thu hút mọi đối tượng. Điều đặc biệt ở trà sữa chính là sự kết hợp hòa quyện của trà và sữa tạo ra những hương vị mới lạ. Bạn sẽ cảm nhận được vị thơm của trà thanh mát và béo béo, ngậy ngậy, một chút sự đậm đà của sữa hai hương vị này kết hợp với nhau rất mượt mà.',1),
	(4,'Trà đào',10000,'Image/tradao.png','Trà đào là sự hòa quyện giữa vị trà thanh mát với những miếng đào vàng ươm, thơm ngon và vô cùng bắt mắt. Đào cung cấp tới 15% lượng vitamin C cần thiết hàng ngày cho cơ thể con người. Nó cũng giàu chất chống oxy hóa và thúc đẩy sức khỏe của da và tóc.Việc kết hợp trà đen hoặc trà xanh với đào cũng rất phổ biến và thức uống này thường được gọi là ‘Trà đào’. Hương vị ngọt ngào của đào giúp cân bằng hương vị của các loại trà cực kỳ tốt và thêm hương trái cây tinh tế. Không chỉ có tác dụng giải nhiệt mà trà đào còn có nhiều lợi ích cho sức khỏe.',1);
insert into sanpham(id,tensp,giasp,anh,mota,id_type)
values (5,'Bạc xỉu',25000,'Image/bacxiu.jpg','Bạc xỉu là món ăn có nguồn gốc từ người Hoa sinh sống ở khu vực Chợ Lớn – Sài Gòn nên tên gọi được gọi theo tiếng Quảng Đông. Họ thường kết hợp bạc xỉu nóng với những món ăn sáng đi kèm vào năm 50 – 60. Do sữa tươi lúc đó giá bán rất cao, nên họ pha sữa đặc thêm với nước nóng để bán. Dần dà, họ thêm một chút café để giảm vị của mùi sữa đặc nóng và dần dần biến tấu trở thành món bạc xỉu hấp dẫn ngày nay. Người ta có thể uống bạc xỉu nóng hoặc chấm với bánh quẩy, bánh tiêu…',2),
	(6,'Trà mãng cầu',20000,'Image/tramangcau.jpg','Vào những ngày nắng nóng đơn giản chỉ cần ly mãng cầu xiêm dầm cũng đủ để giải nhiệt ngay lập tức, không những vậy còn giúp cung cấp cho cơ thể một lượng vitamin C và chất xơ nhất định. Tuy nhiên mãng cầu xiêm kết hợp với trà lại là loại đồ uống mà chiếm sự yêu thích tuyệt đối trong mùa hè hiện nay',1),
	(7,'Trà tắc',10000,'Image/tratac.jpg','Trà tắc xí muội là sự kết hợp tuyệt vời giữa trà tắc thơm ngon và xí muội chua ngọt. Với hương vị độc đáo và màu sắc hấp dẫn trà tắc xí muội là lựa chọn hoàn hảo cho những ai yêu thích trà và muốn thưởng thức một loại đồ uống mới lạ. Chất lượng tuyệt vời và giá cả hợp lý trà tắc xí muội sẽ làm hài lòng cả những thực khách khó tính nhất. Hãy đến và thưởng thức ngay hôm nay!',1),
	(8,'Rau má',15000,'Image/rauma.jpg','Hiện nay, rau má được giới trẻ rất yêu thích, vậy điều gì đã tạo nên trào lưu này? Điều đầu tiên chính là đáp ứng được tiêu chuẩn “ngon, bổ, rẻ”. Giá thành của một ly rau má hiện nay khoảng 10-20 nghìn đồng, thấp hơn so với trà sữa, rất hợp túi tiền của học sinh, sinh viên. Bên cạnh đó, rau má còn có rất nhiều công dụng tốt cho sức khỏe của chúng ta. Với hàm lượng cao chất xơ, vitamin và khoáng chất sẽ giúp cải thiện hoạt động tim mạch, giảm mụn, đẹp da, tăng trí nhớ, giải tỏa căng thẳng,… Rau má nguyên chất có hàm lượng calo khá thấp nên là lựa chọn hoàn hảo cho những bạn đang giảm cân mà vẫn thèm ngọt. Tuy nhiên bạn chỉ nên dùng khoảng 200-300ml mỗi ngày; phụ nữ mang thai cũng không nên uống nước rau má.',4),
	(9,'Sinh tố bơ',25000,'Image/sinhtobo.jpg','Sinh tố bơ thơm rất thích hợp để giải nhiệt trong những ngày hè nắng nóng như thế này, việc kết hợp cùng nước ép thơm bổ sung thêm vitamin, các chất cần thiết cho cơ thể.',3),
	(10,'Nước ép cam',15000,'Image/nuoccamep.jpg','Thật tuyệt khi bắt đầu ngày mới bằng cách làm nước ép cam tươi nguyên chất cung cấp vitamin C tốt cho da và sức khỏe. Cam có vitamin C và vô số lợi ích, vì vậy nó trở thành đồ uống một lý tưởng vào mùa hè. Chỉ cần thêm một ít đá và lá bạc hà trang trí sẽ tạo ra một thức uống giải nhiệt hiệu quả.',4),
	(11,'Matcha đá xay',25000,'Image/sinhtobo.jpg','Matcha đá xay là thức uống đặc biệt được ưa chuộng của các bạn trẻ trong thời gian gần đây. Loại đồ uống này đặc biệt thích hợp vào những ngày hè nóng nực bởi vì chúng sở hữu hương vị mát lạnh kết hợp với màu xanh dịu nhẹ nhưng cũng vô cùng bắt mắt. Thành phần chính trong thức uống này là bột Matcha hay còn gọi là bột trà xanh – một loại nguyên liệu được sử dụng nhiều trong pha chế thực phẩm và đồ uống, và đặc nó tốt cho sức khỏe con người cộng thêm với công dụng làm đẹp da. ',3),
	(12,'Sinh tố bơ',25000,'Image/daudaxay.jpg','Dâu đá xay là món đồ uống đáng trải nghiệm trong thời tiết oi ả của ngày hè. Bên cạnh hương vị hấp dẫn, loại thức uống này rất tốt cho những bạn dễ bị nóng trong người bởi dâu tây có công dụng thanh nhiệt và làm da trở nên hồng hào. Cũng giống như các loại đồ uống đá xay ở trên, công thức của dâu đá xay cũng không gây quá nhiều khó khăn cho người pha chế. Chỉ cần pha trộn sirup dâu, dâu tươi, sữa đặc, sữa tươi và xay nguyễn với đá là có thể tạo ra một thức uống giải nhiệt những cũng đầy hấp dẫn trong ngày hè.',3);
insert into categorytype (id,loaisp)
values (1,'Trà'),(2,'Cafe'),(3,'Sinh tố'),(4,'Nước ép');

ALTER TABLE account
RENAME COLUMN phanquyen TO role;
drop table sanpham
select * from sanpham s 

insert into account ( username,pass, email, role) values('hqtr','$2a$10$E8YI10zNdlh/JdnZT/T3ZesqhFOrwgI1vrlNvFcC00bpiiWaA.SN6','admin@gmail.com','admin')
insert into sanpham(id,tensp,giasp,anh,mota,id_type)
values (20,'a',450,'c','d',1)


