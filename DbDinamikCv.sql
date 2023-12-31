USE [DbDinamikCv]
GO
/****** Object:  Table [dbo].[TblAdmin]    Script Date: 8.07.2023 00:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblAdmin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KULLANICIADI] [varchar](20) NULL,
	[SIFRE] [varchar](20) NULL,
 CONSTRAINT [PK_TblAdmin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblDeneyimlerim]    Script Date: 8.07.2023 00:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDeneyimlerim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BASLIK] [varchar](100) NULL,
	[ALTBASLIK] [varchar](100) NULL,
	[ACIKLAMA] [varchar](max) NULL,
	[TARIH] [varchar](100) NULL,
 CONSTRAINT [PK_TblDeneyimlerim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblEgitimlerim]    Script Date: 8.07.2023 00:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblEgitimlerim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BASLIK] [varchar](100) NULL,
	[ALTBASLIK1] [varchar](100) NULL,
	[ALTBASLIK2] [varchar](100) NULL,
	[GNO] [varchar](10) NULL,
	[TARIH] [varchar](100) NULL,
 CONSTRAINT [PK_TblEgitimlerim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblHakkimda]    Script Date: 8.07.2023 00:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblHakkimda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](30) NULL,
	[SOYAD] [varchar](30) NULL,
	[ADRES] [varchar](100) NULL,
	[TELEFON] [varchar](20) NULL,
	[MAIL] [varchar](50) NULL,
	[ACIKLAMA] [varchar](max) NULL,
	[RESİM] [varchar](100) NULL,
 CONSTRAINT [PK_TblHakkimda] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblHobilerim]    Script Date: 8.07.2023 00:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblHobilerim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ACIKLAMA1] [varchar](500) NULL,
	[ACIKLAMA2] [varchar](500) NULL,
 CONSTRAINT [PK_TblHobilerim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblIletisim]    Script Date: 8.07.2023 00:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblIletisim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ADSOYAD] [varchar](100) NULL,
	[MAIL] [varchar](100) NULL,
	[KONU] [varchar](50) NULL,
	[MESAJ] [varchar](1000) NULL,
	[TARIH] [date] NULL,
 CONSTRAINT [PK_TblIletisim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSertifikalarim]    Script Date: 8.07.2023 00:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSertifikalarim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TARIH] [varchar](30) NULL,
	[ACIKLAMA] [varchar](250) NULL,
 CONSTRAINT [PK_TblSertifikalarim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSosyalMedya]    Script Date: 8.07.2023 00:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSosyalMedya](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](30) NULL,
	[LINK] [varchar](50) NULL,
	[ICON] [varchar](30) NULL,
	[DURUM] [bit] NULL,
 CONSTRAINT [PK_TblSosyalMedya] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblYeteneklerim]    Script Date: 8.07.2023 00:53:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblYeteneklerim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[YETENEK] [varchar](50) NULL,
	[ORAN] [tinyint] NULL,
 CONSTRAINT [PK_TblYeteneklerim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblAdmin] ON 

INSERT [dbo].[TblAdmin] ([ID], [KULLANICIADI], [SIFRE]) VALUES (1, N'Sedat', N'190508050')
SET IDENTITY_INSERT [dbo].[TblAdmin] OFF
GO
SET IDENTITY_INSERT [dbo].[TblDeneyimlerim] ON 

INSERT [dbo].[TblDeneyimlerim] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [TARIH]) VALUES (1, N'UYUMSOFT', N'Stajyer', N'ASP.NET MVC stajı benim için oldukça verimli ve değerli bir deneyim oldu. Hem teknik yeteneklerimi geliştirmeme hem de gerçek dünyadaki projelerde çalışma deneyimi kazanmama yardımcı oldu. Bu staj, gelecekteki kariyerimde temel bir dönüm noktası oldu ve ASP.NET MVC framework''ünü kullanarak web uygulamaları geliştirmeye olan ilgimi artırdı.', N'Temmuz 10 - Ağustos 11')
INSERT [dbo].[TblDeneyimlerim] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [TARIH]) VALUES (2, N'UBISOFT', N'Stajyer', N'Kendi ilgi alanım olan oyun dünyasına giriş yapma ve gerçek projelerde çalışma şansı verdi. Bu deneyim, oyun geliştirme sürecini daha iyi anlamama ve becerilerimi geliştirmeme yardımcı oldu. Aynı zamanda, oyun sektöründeki zorluklarla karşılaşma ve yenilikçi fikirler üretme fırsatı yakaladım.', N'Haziran 20 - Temmuz 7')
INSERT [dbo].[TblDeneyimlerim] ([ID], [BASLIK], [ALTBASLIK], [ACIKLAMA], [TARIH]) VALUES (3, N'PATIKA DEV.', N'Eğitim', N'Kursta, takım çalışması becerilerimi geliştirme fırsatı buldum. Proje bazlı çalışmalar yaparken, farklı yeteneklere sahip insanlarla birlikte çalışarak, ekip içinde iletişim kurma ve işbirliği yapma yeteneklerimi artırdım. Bu, gerçek dünyadaki yazılım projelerinde etkili bir şekilde çalışmamı sağlayacak.', N'Mayıs 28 - Haziran 18')
SET IDENTITY_INSERT [dbo].[TblDeneyimlerim] OFF
GO
SET IDENTITY_INSERT [dbo].[TblEgitimlerim] ON 

INSERT [dbo].[TblEgitimlerim] ([ID], [BASLIK], [ALTBASLIK1], [ALTBASLIK2], [GNO], [TARIH]) VALUES (1, N'Arnavutköy İlköğretim - Ortaöğretim Okulu', N'Öğlenci İlkokul', N'Sabahçı Ortaokul', N'87', N'07/2005 - 07/2013')
INSERT [dbo].[TblEgitimlerim] ([ID], [BASLIK], [ALTBASLIK1], [ALTBASLIK2], [GNO], [TARIH]) VALUES (2, N'Arnavutköy Anadolu Lisesi', N'Sayısal', N'Matematik', N'75', N'07/2013 - 07/2017')
INSERT [dbo].[TblEgitimlerim] ([ID], [BASLIK], [ALTBASLIK1], [ALTBASLIK2], [GNO], [TARIH]) VALUES (3, N'Tokat Gaziosmanpaşa Üniversitesi', N'Mühdendislik Fakültesi', N'Bilgisayar Mühendisi', N'83', N'07/2019 - 07/2023')
SET IDENTITY_INSERT [dbo].[TblEgitimlerim] OFF
GO
SET IDENTITY_INSERT [dbo].[TblHakkimda] ON 

INSERT [dbo].[TblHakkimda] ([ID], [AD], [SOYAD], [ADRES], [TELEFON], [MAIL], [ACIKLAMA], [RESİM]) VALUES (1, N'SEDAT', N'AYYILDIZ', N'İslambey Mah. Arnavutköy İstanbul', N'05355343434', N'sedat.ayyildiz@gmail.com', N'İstanbul ARNAVUTKÖY''de bulunan ARNAVUTKÖY ANADOLU LİSE''sin de ortaöğretimi tamamladım. Üniversite eğitimimi ise TOKAT''ta bulunan TOKAT GAZİOSMANPAŞA ÜNİVERSİTE''sin de tamamladım.', N'https://i.hizliresim.com/cgqkvq1.jpg')
SET IDENTITY_INSERT [dbo].[TblHakkimda] OFF
GO
SET IDENTITY_INSERT [dbo].[TblHobilerim] ON 

INSERT [dbo].[TblHobilerim] ([ID], [ACIKLAMA1], [ACIKLAMA2]) VALUES (1, N'Futbol', N'Futbol benim en sevdiğim hobilerden biri. Topla oynamak, takım halinde çalışmak ve sahada strateji kullanmak beni heyecanlandırıyor. Hem rekabetçi hem de eğlenceli bir spor olduğu için futbolla vakit geçirmek benim için bir zevk.')
INSERT [dbo].[TblHobilerim] ([ID], [ACIKLAMA1], [ACIKLAMA2]) VALUES (2, N'Seyahat Etme', N'Seyahat etmek, yeni yerler keşfetmek ve farklı kültürleri deneyimlemek benim için bir tutku. Her seyahat benim için bir macera ve öğrenme fırsatı. Yeni insanlarla tanışmak, egzotik yemekler tatmak ve tarihi mekanları gezmek beni heyecanlandırıyor. Seyahat etmek, hayatı daha renkli ve anlamlı kılıyor.')
INSERT [dbo].[TblHobilerim] ([ID], [ACIKLAMA1], [ACIKLAMA2]) VALUES (3, N'Yüzme', N'Yüzme, hem bedensel hem de zihinsel açıdan rahatlama sağlayan harika bir hobidir. Suyun içinde kaymak, serinlemek ve su altında keşif yapmak beni huzurlu hissettiriyor. Yüzme, stres atmak için mükemmel bir yol ve aynı zamanda fiziksel formumu korumama yardımcı oluyor. Suda hareket etmek, özgürlük hissi veriyor ve kendimi yenilenmiş hissettiriyor.')
SET IDENTITY_INSERT [dbo].[TblHobilerim] OFF
GO
SET IDENTITY_INSERT [dbo].[TblIletisim] ON 

INSERT [dbo].[TblIletisim] ([ID], [ADSOYAD], [MAIL], [KONU], [MESAJ], [TARIH]) VALUES (1, N'Sedat Ayyıldız', N'sedat@gmail.com', N'İş Teklifi', N'ajsdhajshdas daks jdlsk jdasd ', CAST(N'2022-04-04' AS Date))
INSERT [dbo].[TblIletisim] ([ID], [ADSOYAD], [MAIL], [KONU], [MESAJ], [TARIH]) VALUES (2, N'Mehmet Aslan', N'mehmet@gmail.com', N'Proje Talebi', N'lsjadhlasdaskj dşsajd lsakdslk dilsaksd ', CAST(N'2022-01-01' AS Date))
SET IDENTITY_INSERT [dbo].[TblIletisim] OFF
GO
SET IDENTITY_INSERT [dbo].[TblSertifikalarim] ON 

INSERT [dbo].[TblSertifikalarim] ([ID], [TARIH], [ACIKLAMA]) VALUES (1, N'Aralık 2021', N'Asp.Net 50 Derste Yemek Tarifi Sitesi')
INSERT [dbo].[TblSertifikalarim] ([ID], [TARIH], [ACIKLAMA]) VALUES (2, N'Ocak 2021', N'HTML / CSS / JS')
INSERT [dbo].[TblSertifikalarim] ([ID], [TARIH], [ACIKLAMA]) VALUES (3, N'Mayıs 2021', N'C# ile Sıfırdan Sektörün Yükseklerine')
INSERT [dbo].[TblSertifikalarim] ([ID], [TARIH], [ACIKLAMA]) VALUES (4, N'Haziran 2021', N'Sql Programlama Eğitimi')
INSERT [dbo].[TblSertifikalarim] ([ID], [TARIH], [ACIKLAMA]) VALUES (5, N'Subat 2022', N'SEO Eğitimi')
SET IDENTITY_INSERT [dbo].[TblSertifikalarim] OFF
GO
SET IDENTITY_INSERT [dbo].[TblSosyalMedya] ON 

INSERT [dbo].[TblSosyalMedya] ([ID], [AD], [LINK], [ICON], [DURUM]) VALUES (1, N'Twiter', NULL, N'fab fa-twitter', 1)
INSERT [dbo].[TblSosyalMedya] ([ID], [AD], [LINK], [ICON], [DURUM]) VALUES (2, N'Linkedin', NULL, N'fab fa-linkedin-in', 1)
INSERT [dbo].[TblSosyalMedya] ([ID], [AD], [LINK], [ICON], [DURUM]) VALUES (3, N'Instagram', NULL, N'fab fa-instagram', 1)
INSERT [dbo].[TblSosyalMedya] ([ID], [AD], [LINK], [ICON], [DURUM]) VALUES (6, N'Github', NULL, N'fab fa-github', 1)
SET IDENTITY_INSERT [dbo].[TblSosyalMedya] OFF
GO
SET IDENTITY_INSERT [dbo].[TblYeteneklerim] ON 

INSERT [dbo].[TblYeteneklerim] ([ID], [YETENEK], [ORAN]) VALUES (1, N'HTML', 85)
INSERT [dbo].[TblYeteneklerim] ([ID], [YETENEK], [ORAN]) VALUES (2, N'CSS', 80)
INSERT [dbo].[TblYeteneklerim] ([ID], [YETENEK], [ORAN]) VALUES (3, N'SASS', 80)
INSERT [dbo].[TblYeteneklerim] ([ID], [YETENEK], [ORAN]) VALUES (4, N'BOOTSTRAP', 90)
INSERT [dbo].[TblYeteneklerim] ([ID], [YETENEK], [ORAN]) VALUES (5, N'JS', 70)
INSERT [dbo].[TblYeteneklerim] ([ID], [YETENEK], [ORAN]) VALUES (6, N'JAVA', 75)
INSERT [dbo].[TblYeteneklerim] ([ID], [YETENEK], [ORAN]) VALUES (7, N'C#', 85)
INSERT [dbo].[TblYeteneklerim] ([ID], [YETENEK], [ORAN]) VALUES (8, N'ASP.NET MVC', 85)
INSERT [dbo].[TblYeteneklerim] ([ID], [YETENEK], [ORAN]) VALUES (9, N'SQL', 85)
INSERT [dbo].[TblYeteneklerim] ([ID], [YETENEK], [ORAN]) VALUES (10, N'POSTGRESQL', 75)
INSERT [dbo].[TblYeteneklerim] ([ID], [YETENEK], [ORAN]) VALUES (11, N'SEO', 80)
INSERT [dbo].[TblYeteneklerim] ([ID], [YETENEK], [ORAN]) VALUES (12, N'C++', 45)
SET IDENTITY_INSERT [dbo].[TblYeteneklerim] OFF
GO
