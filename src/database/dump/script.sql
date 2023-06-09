USE [master]
GO
/****** Object:  Database [casier_judiciaire]    Script Date: 1/7/2023 12:44:03 AM ******/
CREATE DATABASE [casier_judiciaire]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'casier_judiciaire', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS2\MSSQL\DATA\casier_judiciaire.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'casier_judiciaire_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS2\MSSQL\DATA\casier_judiciaire_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [casier_judiciaire] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [casier_judiciaire].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [casier_judiciaire] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [casier_judiciaire] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [casier_judiciaire] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [casier_judiciaire] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [casier_judiciaire] SET ARITHABORT OFF 
GO
ALTER DATABASE [casier_judiciaire] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [casier_judiciaire] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [casier_judiciaire] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [casier_judiciaire] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [casier_judiciaire] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [casier_judiciaire] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [casier_judiciaire] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [casier_judiciaire] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [casier_judiciaire] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [casier_judiciaire] SET  ENABLE_BROKER 
GO
ALTER DATABASE [casier_judiciaire] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [casier_judiciaire] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [casier_judiciaire] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [casier_judiciaire] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [casier_judiciaire] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [casier_judiciaire] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [casier_judiciaire] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [casier_judiciaire] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [casier_judiciaire] SET  MULTI_USER 
GO
ALTER DATABASE [casier_judiciaire] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [casier_judiciaire] SET DB_CHAINING OFF 
GO
ALTER DATABASE [casier_judiciaire] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [casier_judiciaire] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [casier_judiciaire] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [casier_judiciaire] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [casier_judiciaire] SET QUERY_STORE = OFF
GO
USE [casier_judiciaire]
GO
/****** Object:  Table [dbo].[_Checker]    Script Date: 1/7/2023 12:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Checker](
	[id_ECJ] [int] NOT NULL,
	[id_DIJ] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banque]    Script Date: 1/7/2023 12:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banque](
	[Id_bordereau] [int] IDENTITY(1,1) NOT NULL,
	[Bordereau_de_paiment] [text] NOT NULL,
 CONSTRAINT [Banque_PK] PRIMARY KEY CLUSTERED 
(
	[Id_bordereau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Criminel]    Script Date: 1/7/2023 12:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Criminel](
	[id_criminel] [int] IDENTITY(1,1) NOT NULL,
	[Noms] [nvarchar](255) NOT NULL,
	[Prenom] [nvarchar](255) NOT NULL,
	[Genre] [nvarchar](255) NOT NULL,
	[Ville] [nvarchar](255) NOT NULL,
	[Taille] [float] NOT NULL,
	[Poid] [float] NOT NULL,
	[Ne_a] [nvarchar](255) NOT NULL,
	[Date_de_naissance] [date] NOT NULL,
	[Code_d_infraction] [nvarchar](255) NOT NULL,
	[Institution] [nvarchar](255) NOT NULL,
	[Charge_s_] [nvarchar](255) NOT NULL,
	[Sentence] [nvarchar](255) NOT NULL,
	[Date] [date] NOT NULL,
	[Description] [nvarchar](1234) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_criminel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Crminel ]    Script Date: 1/7/2023 12:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Crminel ](
	[id_criminel] [int] IDENTITY(1,1) NOT NULL,
	[Noms] [varchar](50) NOT NULL,
	[Alias] [varchar](50) NOT NULL,
	[Genre] [char](1) NOT NULL,
	[Ville] [varchar](50) NOT NULL,
	[Taille] [float] NOT NULL,
	[Poid] [float] NOT NULL,
	[Ne_a] [varchar](50) NOT NULL,
	[Date_de_naissance] [datetime] NOT NULL,
	[Code_d_infraction] [varchar](80) NOT NULL,
	[Institution] [varchar](80) NOT NULL,
	[Charge_s_] [varchar](80) NOT NULL,
	[ID_du_casier] [int] NOT NULL,
	[Sentence] [varchar](80) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Description] [text] NOT NULL,
	[Id_ECJ] [int] NOT NULL,
 CONSTRAINT [Crminel_PK] PRIMARY KEY CLUSTERED 
(
	[id_criminel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Demandeur]    Script Date: 1/7/2023 12:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Demandeur](
	[Id_demandeur] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [varchar](50) NOT NULL,
	[Post_nom] [varchar](50) NOT NULL,
	[Date_de_naissance] [datetime] NOT NULL,
	[Lieu_de_naissance] [varchar](50) NOT NULL,
	[Adresse] [varchar](50) NOT NULL,
	[Secteur_ou_chefferie_ou_commune] [varchar](50) NOT NULL,
	[Territoire_ou_ville] [varchar](50) NOT NULL,
	[Province] [varchar](50) NOT NULL,
	[Nom_du_pere] [varchar](50) NOT NULL,
	[Nom_de_la_mere] [varchar](50) NOT NULL,
	[Id_reception] [int] NULL,
	[Id_fiche_decadactylaire] [int] NULL,
	[Id_bordereau] [int] NULL,
	[Id_Attestation_de_recouvrement] [int] NULL,
	[Id_DIJ] [int] NULL,
	[Id_empreintes] [int] NULL,
 CONSTRAINT [Demandeur_PK] PRIMARY KEY CLUSTERED 
(
	[Id_demandeur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DGRAD]    Script Date: 1/7/2023 12:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DGRAD](
	[Id_Attestation_de_recouvrement] [int] IDENTITY(1,1) NOT NULL,
	[Attestation_de_recouvrement] [text] NOT NULL,
 CONSTRAINT [DGRAD_PK] PRIMARY KEY CLUSTERED 
(
	[Id_Attestation_de_recouvrement] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direction_des_endites_judiciaire]    Script Date: 1/7/2023 12:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direction_des_endites_judiciaire](
	[Id_DIJ] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [Direction_des_endites_judiciaire_PK] PRIMARY KEY CLUSTERED 
(
	[Id_DIJ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enregistrer_criminel]    Script Date: 1/7/2023 12:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enregistrer_criminel](
	[Id_parquet] [int] NOT NULL,
	[id_criminel] [int] NOT NULL,
 CONSTRAINT [Enregistrer_criminel_PK] PRIMARY KEY CLUSTERED 
(
	[Id_parquet] ASC,
	[id_criminel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Envois_Demandeur]    Script Date: 1/7/2023 12:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Envois_Demandeur](
	[Id_DIJ] [int] NOT NULL,
	[Id_reception] [int] NOT NULL,
 CONSTRAINT [Envois_Demandeur_PK] PRIMARY KEY CLUSTERED 
(
	[Id_DIJ] ASC,
	[Id_reception] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Envoyer_bordereau]    Script Date: 1/7/2023 12:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Envoyer_bordereau](
	[Id_Attestation_de_recouvrement] [int] NOT NULL,
	[id_bordereau] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Extrait_du_casier_judiciaire]    Script Date: 1/7/2023 12:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Extrait_du_casier_judiciaire](
	[Id_ECJ] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [Extrait_du_casier_judiciaire_PK] PRIMARY KEY CLUSTERED 
(
	[Id_ECJ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fiche_decadactylaire]    Script Date: 1/7/2023 12:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fiche_decadactylaire](
	[Id_fiche_decadactylaire] [int] IDENTITY(1,1) NOT NULL,
	[Nom] [varchar](50) NOT NULL,
	[Post_nom] [varchar](50) NOT NULL,
	[Prenom] [varchar](50) NOT NULL,
	[Genre] [char](1) NOT NULL,
	[Ville] [varchar](50) NOT NULL,
	[Ne_a] [varchar](50) NOT NULL,
	[Date_de_naissance] [datetime] NOT NULL,
	[Commune] [varchar](50) NOT NULL,
	[Lieu_de_naissance] [varchar](50) NOT NULL,
	[Adresse] [varchar](50) NOT NULL,
	[Secteur_ou_chefferie_ou_commune] [varchar](50) NOT NULL,
	[Territoire_ou_ville] [varchar](50) NOT NULL,
	[Province] [varchar](50) NOT NULL,
 CONSTRAINT [Fiche_decadactylaire_PK] PRIMARY KEY CLUSTERED 
(
	[Id_fiche_decadactylaire] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mettre_les_empreintes]    Script Date: 1/7/2023 12:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mettre_les_empreintes](
	[id_fiche_decadactylaire] [int] NOT NULL,
	[id_empreintes] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parquet]    Script Date: 1/7/2023 12:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parquet](
	[Id_parquet] [int] IDENTITY(1,1) NOT NULL,
	[Nom_du_parquet] [varchar](50) NOT NULL,
	[Commune] [varchar](50) NOT NULL,
	[Ville] [varchar](50) NOT NULL,
 CONSTRAINT [Parquet_PK] PRIMARY KEY CLUSTERED 
(
	[Id_parquet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Procureur]    Script Date: 1/7/2023 12:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Procureur](
	[Id_procureur] [int] IDENTITY(1,1) NOT NULL,
	[Noms] [varchar](50) NOT NULL,
	[Genre] [char](1) NOT NULL,
	[N_du_telephone] [varchar](12) NOT NULL,
	[Id_parquet] [int] NOT NULL,
 CONSTRAINT [Procureur_PK] PRIMARY KEY CLUSTERED 
(
	[Id_procureur] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reception]    Script Date: 1/7/2023 12:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reception](
	[Id_reception] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [Reception_PK] PRIMARY KEY CLUSTERED 
(
	[Id_reception] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Responsable_des_empreintes_digitale]    Script Date: 1/7/2023 12:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Responsable_des_empreintes_digitale](
	[Id_empreintes] [int] IDENTITY(1,1) NOT NULL,
	[Empreintes_digital] [varbinary](max) NOT NULL,
 CONSTRAINT [Responsable_des_empreintes_digitale_PK] PRIMARY KEY CLUSTERED 
(
	[Id_empreintes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/7/2023 12:44:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Criminel] ON 

INSERT [dbo].[Criminel] ([id_criminel], [Noms], [Prenom], [Genre], [Ville], [Taille], [Poid], [Ne_a], [Date_de_naissance], [Code_d_infraction], [Institution], [Charge_s_], [Sentence], [Date], [Description]) VALUES (3, N'John', N'doe', N'M', N'Kinshasa', 2.15, 110.2, N'Goma', CAST(N'1995-12-23' AS Date), N'A-723', N'HAUTE COUR MILITAIRE', N'MEUTRE', N'	10Y 00M 00D', CAST(N'2022-12-27' AS Date), N'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nostrum totam ipsam neque veritatis animi hic minus et, quis asperiores aperiam eos officia laboriosam error quos labore minima libero. Quas, doloremque.')
INSERT [dbo].[Criminel] ([id_criminel], [Noms], [Prenom], [Genre], [Ville], [Taille], [Poid], [Ne_a], [Date_de_naissance], [Code_d_infraction], [Institution], [Charge_s_], [Sentence], [Date], [Description]) VALUES (4, N'klouce', N'mikelson', N'M', N'Kinshasa', 1.87, 86, N'Barbade', CAST(N'1990-03-18' AS Date), N'B-5656', N'COUR D''APPEL DE KINSHASA', N'BRAQUAGE', N'23Y 02M 00D', CAST(N'2021-09-23' AS Date), N'''injonction de soins est une peine complémentaire qui peut s''ajouter à la peine de réclusion criminelle.')
INSERT [dbo].[Criminel] ([id_criminel], [Noms], [Prenom], [Genre], [Ville], [Taille], [Poid], [Ne_a], [Date_de_naissance], [Code_d_infraction], [Institution], [Charge_s_], [Sentence], [Date], [Description]) VALUES (7, N'john', N'Lady', N'F', N'Kinshasa', 190, 90, N'Kinshasa', CAST(N'1998-02-06' AS Date), N'C-5623', N'COUR SUPREME DE LA JUSTICE', N'Meurtre', N'4Y 2M 7D', CAST(N'2022-06-26' AS Date), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum deserunt molestias assumenda eveniet non eaque labore laudantium facere aliquam. Corporis deserunt fuga dolore eius repellat qui doloribus et voluptate voluptates?')
INSERT [dbo].[Criminel] ([id_criminel], [Noms], [Prenom], [Genre], [Ville], [Taille], [Poid], [Ne_a], [Date_de_naissance], [Code_d_infraction], [Institution], [Charge_s_], [Sentence], [Date], [Description]) VALUES (8, N'john', N'Lady', N'F', N'Kinshasa', 190, 90, N'Kinshasa', CAST(N'1998-02-06' AS Date), N'C-5689', N'COUR SUPREME DE LA JUSTICE', N'Vole', N'2Y 6M 8D', CAST(N'2022-06-26' AS Date), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum deserunt molestias assumenda eveniet non eaque labore laudantium facere aliquam. Corporis deserunt fuga dolore eius repellat qui doloribus et voluptate voluptates?')
INSERT [dbo].[Criminel] ([id_criminel], [Noms], [Prenom], [Genre], [Ville], [Taille], [Poid], [Ne_a], [Date_de_naissance], [Code_d_infraction], [Institution], [Charge_s_], [Sentence], [Date], [Description]) VALUES (9, N'john', N'Lady', N'M', N'Kinshasa', 190, 90, N'Goma', CAST(N'1998-02-06' AS Date), N'C-5689', N'COUR SUPREME DE LA JUSTICE', N'Vole', N'2Y 6M 8D', CAST(N'2022-06-26' AS Date), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum deserunt molestias assumenda eveniet non eaque labore laudantium facere aliquam. Corporis deserunt fuga dolore eius repellat qui doloribus et voluptate voluptates?')
INSERT [dbo].[Criminel] ([id_criminel], [Noms], [Prenom], [Genre], [Ville], [Taille], [Poid], [Ne_a], [Date_de_naissance], [Code_d_infraction], [Institution], [Charge_s_], [Sentence], [Date], [Description]) VALUES (10, N'john', N'Lady', N'F', N'Kinshasa', 180, 90, N'Goma', CAST(N'1998-02-06' AS Date), N'C-5689', N'COUR SUPREME DE LA JUSTICE', N'Vole', N'4Y 2M 7D', CAST(N'2022-06-26' AS Date), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum deserunt molestias assumenda eveniet non eaque labore laudantium facere aliquam. Corporis deserunt fuga dolore eius repellat qui doloribus et voluptate voluptates?')
INSERT [dbo].[Criminel] ([id_criminel], [Noms], [Prenom], [Genre], [Ville], [Taille], [Poid], [Ne_a], [Date_de_naissance], [Code_d_infraction], [Institution], [Charge_s_], [Sentence], [Date], [Description]) VALUES (11, N'john', N'Lady', N'F', N'Kinshasa', 180, 90, N'Goma', CAST(N'1998-02-06' AS Date), N'C-5689', N'COUR SUPREME DE LA JUSTICE', N'Vole', N'4Y 2M 7D', CAST(N'2022-06-26' AS Date), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum deserunt molestias assumenda eveniet non eaque labore laudantium facere aliquam. Corporis deserunt fuga dolore eius repellat qui doloribus et voluptate voluptates?')
SET IDENTITY_INSERT [dbo].[Criminel] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [email], [password]) VALUES (1, N'John.doe@test.com', N'abc123!')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[_Checker]  WITH CHECK ADD  CONSTRAINT [_Checker_FK] FOREIGN KEY([id_ECJ])
REFERENCES [dbo].[Extrait_du_casier_judiciaire] ([Id_ECJ])
GO
ALTER TABLE [dbo].[_Checker] CHECK CONSTRAINT [_Checker_FK]
GO
ALTER TABLE [dbo].[_Checker]  WITH CHECK ADD  CONSTRAINT [_Checker_FK1] FOREIGN KEY([id_DIJ])
REFERENCES [dbo].[Direction_des_endites_judiciaire] ([Id_DIJ])
GO
ALTER TABLE [dbo].[_Checker] CHECK CONSTRAINT [_Checker_FK1]
GO
ALTER TABLE [dbo].[Crminel ]  WITH CHECK ADD  CONSTRAINT [Crminel_Extrait_du_casier_judiciaire_FK] FOREIGN KEY([Id_ECJ])
REFERENCES [dbo].[Extrait_du_casier_judiciaire] ([Id_ECJ])
GO
ALTER TABLE [dbo].[Crminel ] CHECK CONSTRAINT [Crminel_Extrait_du_casier_judiciaire_FK]
GO
ALTER TABLE [dbo].[Demandeur]  WITH CHECK ADD  CONSTRAINT [Demandeur_Banque1_FK] FOREIGN KEY([Id_bordereau])
REFERENCES [dbo].[Banque] ([Id_bordereau])
GO
ALTER TABLE [dbo].[Demandeur] CHECK CONSTRAINT [Demandeur_Banque1_FK]
GO
ALTER TABLE [dbo].[Demandeur]  WITH CHECK ADD  CONSTRAINT [Demandeur_DGRAD2_FK] FOREIGN KEY([Id_Attestation_de_recouvrement])
REFERENCES [dbo].[DGRAD] ([Id_Attestation_de_recouvrement])
GO
ALTER TABLE [dbo].[Demandeur] CHECK CONSTRAINT [Demandeur_DGRAD2_FK]
GO
ALTER TABLE [dbo].[Demandeur]  WITH CHECK ADD  CONSTRAINT [Demandeur_Direction_des_endites_judiciaire3_FK] FOREIGN KEY([Id_DIJ])
REFERENCES [dbo].[Direction_des_endites_judiciaire] ([Id_DIJ])
GO
ALTER TABLE [dbo].[Demandeur] CHECK CONSTRAINT [Demandeur_Direction_des_endites_judiciaire3_FK]
GO
ALTER TABLE [dbo].[Demandeur]  WITH CHECK ADD  CONSTRAINT [Demandeur_Fiche_decadactylaire0_FK] FOREIGN KEY([Id_fiche_decadactylaire])
REFERENCES [dbo].[Fiche_decadactylaire] ([Id_fiche_decadactylaire])
GO
ALTER TABLE [dbo].[Demandeur] CHECK CONSTRAINT [Demandeur_Fiche_decadactylaire0_FK]
GO
ALTER TABLE [dbo].[Demandeur]  WITH CHECK ADD  CONSTRAINT [Demandeur_Reception_FK] FOREIGN KEY([Id_reception])
REFERENCES [dbo].[Reception] ([Id_reception])
GO
ALTER TABLE [dbo].[Demandeur] CHECK CONSTRAINT [Demandeur_Reception_FK]
GO
ALTER TABLE [dbo].[Demandeur]  WITH CHECK ADD  CONSTRAINT [Demandeur_Responsable_des_empreintes_digitale4_FK] FOREIGN KEY([Id_empreintes])
REFERENCES [dbo].[Responsable_des_empreintes_digitale] ([Id_empreintes])
GO
ALTER TABLE [dbo].[Demandeur] CHECK CONSTRAINT [Demandeur_Responsable_des_empreintes_digitale4_FK]
GO
ALTER TABLE [dbo].[Enregistrer_criminel]  WITH CHECK ADD  CONSTRAINT [Enregistrer_criminel_Crminel0_FK] FOREIGN KEY([id_criminel])
REFERENCES [dbo].[Crminel ] ([id_criminel])
GO
ALTER TABLE [dbo].[Enregistrer_criminel] CHECK CONSTRAINT [Enregistrer_criminel_Crminel0_FK]
GO
ALTER TABLE [dbo].[Enregistrer_criminel]  WITH CHECK ADD  CONSTRAINT [Enregistrer_criminel_Parquet_FK] FOREIGN KEY([Id_parquet])
REFERENCES [dbo].[Parquet] ([Id_parquet])
GO
ALTER TABLE [dbo].[Enregistrer_criminel] CHECK CONSTRAINT [Enregistrer_criminel_Parquet_FK]
GO
ALTER TABLE [dbo].[Envois_Demandeur]  WITH CHECK ADD  CONSTRAINT [Envois_Demandeur_FK] FOREIGN KEY([Id_reception])
REFERENCES [dbo].[Reception] ([Id_reception])
GO
ALTER TABLE [dbo].[Envois_Demandeur] CHECK CONSTRAINT [Envois_Demandeur_FK]
GO
ALTER TABLE [dbo].[Envoyer_bordereau]  WITH CHECK ADD  CONSTRAINT [Envoyer_bordereau_FK] FOREIGN KEY([Id_Attestation_de_recouvrement])
REFERENCES [dbo].[DGRAD] ([Id_Attestation_de_recouvrement])
GO
ALTER TABLE [dbo].[Envoyer_bordereau] CHECK CONSTRAINT [Envoyer_bordereau_FK]
GO
ALTER TABLE [dbo].[Envoyer_bordereau]  WITH CHECK ADD  CONSTRAINT [Envoyer_bordereau_FK1] FOREIGN KEY([id_bordereau])
REFERENCES [dbo].[Banque] ([Id_bordereau])
GO
ALTER TABLE [dbo].[Envoyer_bordereau] CHECK CONSTRAINT [Envoyer_bordereau_FK1]
GO
ALTER TABLE [dbo].[Mettre_les_empreintes]  WITH CHECK ADD  CONSTRAINT [Mettre_les_empreintes_FK] FOREIGN KEY([id_fiche_decadactylaire])
REFERENCES [dbo].[Fiche_decadactylaire] ([Id_fiche_decadactylaire])
GO
ALTER TABLE [dbo].[Mettre_les_empreintes] CHECK CONSTRAINT [Mettre_les_empreintes_FK]
GO
ALTER TABLE [dbo].[Mettre_les_empreintes]  WITH CHECK ADD  CONSTRAINT [Mettre_les_empreintes_FK1] FOREIGN KEY([id_empreintes])
REFERENCES [dbo].[Responsable_des_empreintes_digitale] ([Id_empreintes])
GO
ALTER TABLE [dbo].[Mettre_les_empreintes] CHECK CONSTRAINT [Mettre_les_empreintes_FK1]
GO
ALTER TABLE [dbo].[Procureur]  WITH CHECK ADD  CONSTRAINT [Procureur_Parquet_FK] FOREIGN KEY([Id_parquet])
REFERENCES [dbo].[Parquet] ([Id_parquet])
GO
ALTER TABLE [dbo].[Procureur] CHECK CONSTRAINT [Procureur_Parquet_FK]
GO
USE [master]
GO
ALTER DATABASE [casier_judiciaire] SET  READ_WRITE 
GO
