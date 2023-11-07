
USE [ProjectPRJshoe]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/24/2022 9:35:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 4/24/2022 9:35:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[cartId] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[cartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/24/2022 9:35:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 4/24/2022 9:35:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/24/2022 9:35:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](255) NULL,
	[create_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 4/24/2022 9:35:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 4/24/2022 9:35:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (1, N'hieu', N'1', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (2, N'abvv', N'123456', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (3, N'Anjolie', N'SNZ6HE', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (4, N'Ferris', N'RXH3XJ', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (5, N'Katell', N'HWV8ZN', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (6, N'Zahir', N'NPX7OF', 1, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (7, N'Conan', N'WIZ5VZ', 1, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (8, N'Cade', N'ZSW2LU', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (9, N'Micah', N'RVV5SR', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (10, N'Rowan', N'VAI6XR', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (11, N'Kirby', N'DNX6JK', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (12, N'Tanisha', N'XWU7JP', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (13, N'Howard', N'TSR5MR', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (14, N'Tana', N'EHS8CM', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (15, N'Hadassah', N'YOY7ZW', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (16, N'Echo', N'IGE8TN', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (17, N'Slade', N'OFO6QS', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (18, N'Devin', N'IBM6RZ', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (19, N'Rowan', N'ZYS9VI',1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (20, N'Rafael', N'WZA0IH', 1, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (21, N'Madaline', N'QMW4EN', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (22, N'Vera', N'CZB2VM', 0, 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (23, N'Declan', N'ZKE7QZ', 1, 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (24, N'Katell', N'SFS0IW', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (25, N'Summer', N'PSQ7LC', 0, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (26, N'Robin', N'KIS9AF', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (27, N'Dominique', N'IKV0IX', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (28, N'admin', N'123', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (29, N'mra', N'mra', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (30, N'mrb', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (31, N'Camden', N'123', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (32, N'manhdsz', N'123456', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (33, N'sfdfds', N'123', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (34, N'aaaaa', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (35, N'bbbb', N'1234', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (36, N'luong', N'123', 0, 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (37, N'mit', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (38, N'aaaaaaaa', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (39, N'bantq', N'123', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (40, N'thong', N'123',0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (41, N'cd', N'1234', 0, 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (42, N'trungdk', N'123', 1, 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [active]) VALUES (43, N'viet', N'123', 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'ADIDAS')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'NIKE')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'CONVERSE')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'PUMA')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO

GO

GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1, N'Nike Air Max 1', N'https://mcdn.coolmate.me/uploads/January2022/mau-giay-nike-ban-chay-nhat-2.jpg', 140.0000, N'Giày Nike Air Max 1 mix đỏ trắng', N'Tác giả của tác phẩm Nike Air Max 1 không ai khác ngoài nhà thiết kế Tinker Hatfield. Ban đầu, Hatfield được Nike thuê vào năm 1981 với tư cách là kiến ​​trúc sư của công ty để thiết kế khuôn viên Oregon (Mỹ). Nhanh chóng đến năm 1985, nhà thiết kế này đã chuyển sang thiết kế giày thể thao để giúp Nike đang gặp khó khăn cạnh tranh với các đối thủ đang phát triển. Trong số các thiết kế của anh ấy, có đôi giày thể thao Air Max đầu tiên.', 2, 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (2, N'Adidas Yeezy 350 boost', N'https://bizweb.dktcdn.net/100/413/756/files/adidas-hot-05.jpg?v=1614323559438', 150.0000, N'Giày Adidas Yeezy 350 boost Phối màu moon rock', N'adidas Yeezy 350 boost từ khi xuất hiện trên thị trường đã thu hút rất nhiều lượt quan tâm và tìm kiếm của người tiêu dùng, ai cũng muốn sở hữu riêng cho mình một đôi. Với thiết kế thời thượng cùng đa dạng phối màu rất chất, sẽ rất thích hợp để bạn diện những trang phục với phong cách hiện đại và cá tính.Bên cạnh đó, đây là đôi giày được thiết kế vô cùng êm ái cho bàn chân của người sử dụng. Đảm bảo độ thông thoáng, chắc chắn và đàn hồi tốt để bạn có được những bước chân thoải mái nhát. ', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (3, N'Nike Air Force 1', N'https://mcdn.coolmate.me/uploads/January2022/mau-giay-nike-ban-chay-nhat-1.jpg', 160.0000, N'Giày Nike Air Force 1 trắng', N'Nike Air Force 1 (AF-1) được ra mắt lần đầu tiên vào năm 1982 với vai trò là giày bóng rổ. Đôi giày này đã trở thành biểu tượng của thời trang, phong cách và sự thoải mái. Mọi người ở mọi lứa tuổi đều yêu thích nó vì thiết kế đơn giản, trẻ trung và dễ phối đồ.
Là một trong những đôi giày quốc dân bán chạy nhất mọi thời đại, Nike AF-1 là mẫu giày đầu tiên của Nike sử dụng công nghệ Nike Air. Nike Air Force 1 được đặt theo tên của chiếc máy bay Air Force One chuyên chở Tổng thống Hoa Kỳ. ', 2, 8)

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (4, N'Adidas ALPHABOUNCE EK GY5401', N'https://cdn.tgdd.vn/Products/Images/9980/271291/giay-chay-bo-unisex-adidas-alphabounce-ek-gy5401-0-600x600.jpg', 170.0000, N'GIÀY ADIDAS ALPHABOUNCE EK GY5401 trắng', N'có thiết kế vô cùng mạnh mẽ, cá tính và trẻ trung thu hút được sự ưa chuộng của rất nhiều người tiêu dùng. Phù hợp với nhiều loại trang phục hoạt động thường ngày, mang đến cho bạn vẻ ngoài chỉnh chu và tự tin nhất.
Phần thân giày sử dụng chất liệu vải Forged Mesh cùng cấu trúc sock-line và dây giày tròn có tác dụng ôm khít chân. Điều này sẽ giúp tăng độ thoáng khí và mang đến cảm giác khỏe khoắn khi hoạt động. Phần đế được làm chắc chắn với độ bám dính và chống trơn trượt vô cùng tốt, mang đến cảm giác êm ái cho đôi chân.', 1, 15)

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (5, N'Nike Air Flight 89', N'https://mcdn.coolmate.me/uploads/January2022/mau-giay-nike-ban-chay-nhat-4.jpg', 120.0000, N'Giày Nike Air Flight 89 đen', N'Nike Air Flight 89 được phát hành lần đầu tiên vào năm 1989, cùng với Nike Air Jordan IV. Đôi giày thể thao này có quy trình sản xuất tương tự như Air Jordan IV, với đế giữa bằng Polyurethane và đế Air có thể nhìn thấy ở gót.', 2, 7)

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (6, N'Adidas Stan Smith Original', N'https://m.media-amazon.com/images/I/61ibQ15PvxL._AC_SR920,736_.jpg', 130.0000, N'Giày Adidas Stan Smith Cloud White', N'adidas Stan Smith vẫn luôn giữ được chỗ dứng trong cộng đồng yêu thích sneaker Với thiết kế đơn giản và đẹp mắt đã mang đến sức hấp dẫn to lớn cho rất nhiều người, bạn có thể thoai mái phố đồ cùng với đôi giày này để tạo nên những phong cách chất lừ nhất. Bạn có thể sử dụng đôi giày này cho nhiều dịp khác nhau như đi học, đi làm, đi du lịch,...', 1, 8)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (7, N'Adidas Yeezy 750', N'https://saigonsneaker.com/wp-content/uploads/2019/12/ten-cac-loai-giay-adidas.jpg.webp', 100.0000,N'Giày Adidas Yeezy 750', N'Mẫu giày Adidas được coi là bản đánh dấu sự hợp tác giữa Adidas và Kanye để tạo ra những siêu phẩm sau này.
Adidas Yeezy 750 được đánh giá là mang đậm thiết kế “lạ” của Kanye West với phần trap (miếng quai dán ở phần thân giày) ở giữa. Đây cũng chính là đôi giày được khá nhiều sneakerhead săn đón và “must-have”', 1, 2)

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (8, N'Converse 1970s', N'https://saigonsneaker.com/wp-content/uploads/2020/03/top-collection-brand-3.jpg', 180.0000,N'giày Converse 1970s', N'Có vẻ như đôi giày Converse này có vẻ đơn giản đó nhỉ, nhưng nó là sự kết hợp của sự tinh tế với vẻ đẹp vô cùng đơn giản, luôn có nhưng bất ngờ, nét cức cáp trong từng đường nét của sản phẩmm đó là những gì mà Converse 1970s đã làm hơn 100 năm qua Những điều đặc biệt mà Converse 1970s đã làm với người dùng đó được sự yêu thích của người dùng, Với phong cách vintage bạn sẽ ko bỏ qua đôi giày này được đâu nhé.', 3, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (9, N'Puma Skype', N'https://m.media-amazon.com/images/I/6184rR2Q2xL._AC_SL1500_.jpg', 100.0000, N'Giày nữ Puma Skyle đen trắng', N'Phần đế được làm từ chất liệu cao su mềm nên mang đến cảm giác êm chân khi di chuyển. Giày được áp dụng công nghệ Softfoam và Sockliner nên khi đi đến những nơi có nước sẽ được hạn chế trơn trượt, chống ngã. Thiết kế đơn giản với hai màu trắng và đen.', 4, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (10, N'Converse Chuck Taylor All Star', N'https://img.my-best.vn/content_section/choice_component/sub_contents/fd5a76972f4ccbf77e3e9595c7aca946.jpg?ixlib=rails-4.3.1&q=70&lossless=0&w=690&fit=max&s=ff30ee12326dfe8f504462f307459359', 100.0000, N'Dòng Giày Mang Đậm Dấu Ấn Riêng Của Converse', N'Khi đề cập đến Converse thì dòng giày Chuck Taylor All Star chắc chắn sẽ được ghi nhớ đến. Chuck Taylor All Star ban đầu là dòng giày chuyên dụng cho môn bóng rổ, lần đầu tiên được ra mắt vào năm 1917. All Star là dòng giày mà tuyển thủ bóng rổ NBA nổi tiếng lúc bấy giờ - Chuck Taylor, cực kì yêu thích, và dòng giày này sau đó cũng được đặt theo tên ông. 
Tất nhiên những đôi giày vintage thực sự hay những đôi giày được sản xuất vào thời đó và lưu giữ đến hiện tại thì rất hiếm, giá cũng rất cao. Do đó Converse đã remake và tung ra dòng Chuck Taylor All Star của hiện tại. ', 3, 2)

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (11, N'Converse Jack Purcell', N'https://img.my-best.vn/content_section/choice_component/sub_contents/bc11206414b1db17aacb2e5921f1bcad.jpg?ixlib=rails-4.3.1&q=70&lossless=0&w=690&fit=max&s=6dc082032a0cf3d48173180c2da48741', 120.0000, N'Giày Converse Jack Purcell', N'Dòng giày có thiết kế gần gũi, giản dị, dễ phối đồ đã thu hút được một lượng lớn sự chú ý và yêu thích của người dùng. Đây là dòng giày ban đầu được ra mắt với mục đích là giày cầu lông chuyên dụng. Dòng giày được đặt tên giống với tên của người đàn ông tham gia sáng tạo nên nó - John Edward Jack Purcell, ông là một tuyển thủ cầu lông nổi tiếng lúc bấy giờ. 
Converse Jack Purcell khác biệt với phần midsole trơn nhẵn, mũi giày được trau chuốt một cách lạ mắt với đường kẻ ngang và các đường nổi tạo cảm giác cứng cáp, nổi bật.', 3, 8)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (12, N'Puma Ember Trail', N'https://cdn.tgdd.vn//News/0//nhung-doi-giay-puma-duoc-yeu-thich-nhat.2-845x500-1.jpg', 120.0000, N'Giày Puma Ember Trail thiết kế độc đáo', N'Với kiểu đế chunky hầm hố, mạnh mẽ và thiết kế mới lạ cùng cách phối màu nổi bật, mẫu giày này đã dẫn đầu xu hướng trong năm 2020. Mẫu giày này có thể mang để đi học, đi chơi hay tập thể thao đều rất phù hợp.
Bên trên giày được làm từ chất liệu vải dệt và có lớp lưới, hỗ trợ cho người mang lên êm ái. Đây là mẫu giày bảo vệ chân hoàn hảo nhờ vào lớp lót Midsole eva và công nghệ Formstrip. Phần đế được làm từ cao su có thiết kế các rãnh giúp tăng khả năng linh hoạt khi di chuyển.', 4, 8)

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (13, N'Converse One Star', N'https://img.my-best.vn/content_section/choice_component/sub_contents/74a94724b51eb25a89ebba1bdd8b79a6.jpg?ixlib=rails-4.3.1&q=70&lossless=0&w=690&fit=max&s=11e6a609b14c032f7adfeee3bc040d1c', 165.0000, N'Một Dòng Giày Signature Của Nhà Converse', N'Được cách điệu từ dòng Star & Bar, One Star được tối giản hóa bằng cách bỏ đi hai sọc ở hai bên ngôi sao, để lại duy nhất một ngôi sao tỏa sáng chính giữa phần thân giày. Đây là một trong những dòng giày được yêu thích nhiều nhất bên cạnh Chuck Taylor. 
Cũng giống như Chuck Taylor, đây cũng là dòng giày được sinh ra để phục vụ cho môn bóng rổ vào năm 1974, tuy nhiên do giá thành sản xuất cao nên đã bị khai tử vào 2 năm sau đó. Dòng giày One Star hiện tại được xem như là một dòng remake của phiên bản năm xưa', 3, 20)

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (14, N'Puma Suede', N'https://cdn-amz.woka.io/images/I/41worT-BawL.jpg', 150.0000, N'Giày Puma Suede', N'Dòng giày này là một trong những biểu tượng nổi bật trong phong cách thể thao ở những thập niên 70, 80. Mẫu giày mang đậm dáng vẻ đường phố nhờ vào những miếng da lộn trơn bóng.
Giày Puma Suede nổi bật nhờ vào thiết kế mỏng, đơn giản nhưng vô cùng bắt mắt ở thân giày kết hợp với màu đen cổ điển giúp bạn dễ phối đồ. Mẫu giày này phù hợp với mọi giới tính và độ tuổi khác nhau.', 4, 16)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (15, N'Converse Skidgrip', N'https://s3.gsxtr.com/i/p/sneakers-converse-skidgrip-nubuck-low-black-black-egret-273072-2500-1.jpg', 185.0000, N'Sinh Ra Dành Cho Tín Đồ Ván Trượt', N'Skidgrip ban đầu được định hướng dành cho môn tennis với đặc trưng chống trơn trượt cực tốt. Cũng chính vì đặc trưng đó mà dòng giày này nhận được không ít sự quan tâm đến từ các tín đồ của bộ môn trượt ván cũng như xe đạp BMX. Ngoài khả năng đáp ứng tốt các nhu cầu vận động, đây cũng là mẫu giày rất dễ phối đồ nhờ thiết kế hết sức gọn gàng, liền mạch vì gần như không có các họa tiết hay đường nét điểm xuyết nào trên đôi giày.', 3, 19)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (16, N'Converse Weapon', N'https://streetvibe.vn/wp-content/uploads/2021/09/weapon03-1024x575.jpg', 150.0000, N'Những Chiến Binh Cứng Cáp', N'Converse Weapon là dòng giày bóng rổ được phát hành vào năm 1986 sau khi kí kết hợp đồng với hai tuyển thủ bóng rổ NBA nổi tiếng Magic Johnson và Larry Bird. Chỉ trong vòng hai năm sau đó, dòng giày này trở nên nổi tiếng hơn bao giờ hết với doanh số lên đến 4 triệu đôi được bán ra. Trái với vẻ ngoài hầm hố cứng cáp của mình, Converse Weapon sẽ đem lại cho người mang một sự nhẹ nhàng, êm ái như lướt như bay. Các mẫu Converse Weapon hiện nay đa số được mang như một item streetwear. ', 3, 18)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (17, N'Puma Ignite Evoknit', N'https://sneakernews.com/wp-content/uploads/2017/07/puma-IGNITE-EVOKNIT-WAVE-1.jpg', 180.0000, N'Giày Puma Ignite Evoknit', N'Puma đã cho ra mắt mẫu giày chạy bộ Ignite Evoknit với công nghệ Ignite nổi bật bởi theo nhãn hàng này “Ignite” là công nghệ mới còn “Evoknit” là chất liệu vải có độ co giãn tốt.
Mẫu giày được thiết kế ôm chân như đôi tất với phần cổ giày được thiết kế đàn hồi cao, cố định gót chân bằng dây buộc chắc chắn. Phần đế giày được làm từ chất liệu bọt EVA, giúp bạn luôn êm chân và thoải mái khi mang giày.', 4, 16)

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (18, N'Puma RS-X Trophy', N'https://product.hstatic.net/200000384421/product/rsx_troph.png_a6eedb3c5a404b99a87c39c23e963ae9_d2ab712b7a5b4931bf58b317cd987e74.png', 200.0000, N'Giày Puma RS-X Trophy', N'Đây là mẫu sneaker chunky với thiết kế gọn gàng, được nhiều bạn trẻ ưa chuộng. Phần upper được thiết kế theo phong cách cổ điển với chất liệu vải dệt cao cấp và mút đệm Midsole eva nhẹ, mang đến sự thoải mái cho bạn.
Phần lớp lót được cố định vào gót chân kết hợp với đế cao su chống trơn, giúp bảo vệ đôi chân tối ưu và hỗ trợ di chuyển linh hoạt hơn. Đôi giày này giúp cho bạn nổi bật, phong cách và cá tính hơn khi mang đi chơi, đi tập thể thao.', 4, 2)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (19, N'viet', N'12345678', N'hanoi')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[product] ([id])

GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Account]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Shipping]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_Category] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_Category]
GO
