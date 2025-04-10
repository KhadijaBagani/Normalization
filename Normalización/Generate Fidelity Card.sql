USE [AdventureWorks2022]
GO
/****** Object:  Table [Custom].[FidelityCard]    Script Date: 07/04/2025 14:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Custom].[FidelityCard](
	[PersonID] [int] NOT NULL,
	[StoreID] [int] NOT NULL,
	[NameInCard] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Custom.FidelityCard] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC,
	[StoreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (1, 294, N'Ken J. Sánchez')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (1, 296, N'Ken J. Sánchez')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (2, 308, N'Terri Lee Duffy')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (3, 292, N'Roberto Tambure')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (4, 292, N'Rob Walters')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (5, 292, N'Gail A. Erickso')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (6, 296, N'Jossef H. Goldb')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (7, 292, N'Dylan A. Miller')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (8, 292, N'Diane L. Marghe')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (9, 292, N'Gigi N. Matthew')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (10, 296, N'Michael Raheem')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (11, 292, N'Ovidiu V. Craci')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (12, 294, N'Thierry B. D''He')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (13, 292, N'Janice M. Galvi')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (14, 292, N'Michael I. Sull')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (15, 292, N'Sharon B. Salav')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (16, 296, N'David M. Bradle')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (17, 292, N'Kevin F. Brown')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (18, 292, N'John L. Wood')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (18, 294, N'John L. Wood')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (19, 292, N'Mary A. Dempsey')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (20, 292, N'Wanida M. Bensh')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (21, 296, N'Terry J. Eminhi')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (22, 308, N'Sariya E. Harnp')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (23, 292, N'Mary E. Gibson')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (23, 296, N'Mary E. Gibson')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (24, 292, N'Jill A. William')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (25, 294, N'James R. Hamilt')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (25, 296, N'James R. Hamilt')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (26, 298, N'Peter J. Krebs')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (27, 292, N'Jo A. Brown')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (28, 292, N'Guy R. Gilbert')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (29, 292, N'Mark K. McArthu')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (30, 292, N'Britta L. Simon')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (31, 296, N'Margie W. Shoop')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (32, 296, N'Rebecca A. Lasz')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (33, 296, N'Annik O. Stahl')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (34, 292, N'Suchitra O. Moh')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (35, 292, N'Brandon G. Heid')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (36, 292, N'Jose R. Lugo')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (37, 292, N'Chris O. Okelbe')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (38, 298, N'Kim B. Abercrom')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (39, 298, N'Ed R. Dudenhoef')
GO
INSERT [Custom].[FidelityCard] ([PersonID], [StoreID], [NameInCard]) VALUES (40, 292, N'JoLynn M. Dobne')
GO
ALTER TABLE [Custom].[FidelityCard]  WITH CHECK ADD  CONSTRAINT [FK_FidelityCard_Person] FOREIGN KEY([PersonID])
REFERENCES [Person].[Person] ([BusinessEntityID])
GO
ALTER TABLE [Custom].[FidelityCard] CHECK CONSTRAINT [FK_FidelityCard_Person]
GO
ALTER TABLE [Custom].[FidelityCard]  WITH CHECK ADD  CONSTRAINT [FK_FidelityCard_Store] FOREIGN KEY([StoreID])
REFERENCES [Sales].[Store] ([BusinessEntityID])
GO
ALTER TABLE [Custom].[FidelityCard] CHECK CONSTRAINT [FK_FidelityCard_Store]
GO
