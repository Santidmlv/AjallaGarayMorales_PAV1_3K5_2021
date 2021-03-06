USE [BugTracker]
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 16/11/2021 17:42:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barrios](
	[id_barrio] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[borrado] [bit] NULL,
 CONSTRAINT [PK_Barrios] PRIMARY KEY CLUSTERED 
(
	[id_barrio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 16/11/2021 17:42:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[cuit] [varchar](50) NULL,
	[razon_social] [varchar](50) NULL,
	[borrado] [bit] NULL,
	[calle] [varchar](500) NULL,
	[numero] [varchar](50) NULL,
	[fecha_alta] [datetime] NULL,
	[id_barrio] [int] NULL,
	[id_contacto] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contactos]    Script Date: 16/11/2021 17:42:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contactos](
	[id_contacto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[borrado] [bit] NULL,
 CONSTRAINT [PK_Contactos] PRIMARY KEY CLUSTERED 
(
	[id_contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 16/11/2021 17:42:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[id_factura] [int] IDENTITY(1,1) NOT NULL,
	[numero_factura] [varchar](50) NOT NULL,
	[id_cliente] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[id_usuario_creador] [int] NOT NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturasDetalle]    Script Date: 16/11/2021 17:42:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturasDetalle](
	[id_detalle_factura] [int] IDENTITY(1,1) NOT NULL,
	[id_factura] [int] NULL,
	[numero_orden] [int] NULL,
	[id_producto] [int] NULL,
	[id_proyecto] [int] NULL,
	[id_ciclo_prueba] [int] NULL,
	[precio] [decimal](18, 0) NULL,
	[borrado] [bit] NULL,
 CONSTRAINT [PK_FacturaDetalles] PRIMARY KEY CLUSTERED 
(
	[id_detalle_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 16/11/2021 17:42:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[borrado] [bit] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proyectos]    Script Date: 16/11/2021 17:42:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyectos](
	[id_proyecto] [int] IDENTITY(1,1) NOT NULL,
	[id_producto] [int] NULL,
	[descripcion] [varchar](50) NULL,
	[version] [varchar](50) NULL,
	[alcance] [varchar](50) NULL,
	[id_responsable] [int] NULL,
	[borrado] [nchar](10) NULL,
 CONSTRAINT [PK_Proyectos] PRIMARY KEY CLUSTERED 
(
	[id_proyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 16/11/2021 17:42:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[id_perfil] [int] NOT NULL,
	[usuario] [varchar](50) NOT NULL,
	[password] [varchar](10) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[estado] [varchar](1) NOT NULL,
	[borrado] [bit] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Barrios] ON 

INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (1, N'Arenales', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (2, N'Malvinas', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (3, N'Arguello', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (4, N'Crisol', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (5, N'Yofre', 0)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (6, N'Patricios', 1)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (7, N'Cualulumpur', 1)
INSERT [dbo].[Barrios] ([id_barrio], [nombre], [borrado]) VALUES (1007, N'America', 1)
SET IDENTITY_INSERT [dbo].[Barrios] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (2, N'123', N'Coniferal', 0, N'Yrigoyen', N'234', CAST(N'1998-04-05T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (10, N'22222', N'McDonalds', 0, N'Sarmiento', N'456', CAST(N'1997-12-16T00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (12, N'44444', N'Telefe', 0, N'Uruguay', N'789', CAST(N'1996-03-27T00:00:00.000' AS DateTime), 4, 1)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (13, N'55555', N'Musimundo', 0, N'Calle_Falsa', N'888', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (14, N'66666', N'Lacoste', 0, N'Salta', N'799', CAST(N'1999-03-27T00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (17, N'88888', N'Easy', 0, N'Publica123', N'456', CAST(N'2021-10-11T13:23:54.490' AS DateTime), 5, 3)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (2022, N'66257', N'Andreani', 0, N'San Andres', N'777', CAST(N'2021-11-16T14:39:08.203' AS DateTime), 3, 1)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (2023, N'68187', N'Amazon', 0, N'Cualquiera', NULL, CAST(N'2021-11-16T15:11:14.180' AS DateTime), 2, NULL)
INSERT [dbo].[Clientes] ([id_cliente], [cuit], [razon_social], [borrado], [calle], [numero], [fecha_alta], [id_barrio], [id_contacto]) VALUES (2024, N'71110', N'Zara', 0, N'NoMeAcuerdo', N'1515', CAST(N'2021-11-16T16:26:11.467' AS DateTime), 4, 3)
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Contactos] ON 

INSERT [dbo].[Contactos] ([id_contacto], [nombre], [apellido], [email], [telefono], [borrado]) VALUES (1, N'Jonatan', N'Morales', N'jonatanmorales@gmail.com', N'156787878', 0)
INSERT [dbo].[Contactos] ([id_contacto], [nombre], [apellido], [email], [telefono], [borrado]) VALUES (2, N'Santiago', N'Garay', N'santiago@gmail.com', N'153676767', 0)
INSERT [dbo].[Contactos] ([id_contacto], [nombre], [apellido], [email], [telefono], [borrado]) VALUES (3, N'Ayelen', N'Ajalla', N'ayelen@gmail.com', N'154000000', 0)
INSERT [dbo].[Contactos] ([id_contacto], [nombre], [apellido], [email], [telefono], [borrado]) VALUES (4, N'Juan', N'Carlos', N'jc@gmail.com', N'157898989', 1)
INSERT [dbo].[Contactos] ([id_contacto], [nombre], [apellido], [email], [telefono], [borrado]) VALUES (5, N'Pablo', N'Perez', N'pablo@gmail.com', N'154222222', 1)
INSERT [dbo].[Contactos] ([id_contacto], [nombre], [apellido], [email], [telefono], [borrado]) VALUES (1006, N'Dario', N'Polliotto', N'mpolliotto@gmail.com', N'03034567', 1)
SET IDENTITY_INSERT [dbo].[Contactos] OFF
GO
SET IDENTITY_INSERT [dbo].[Facturas] ON 

INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [borrado]) VALUES (1048, N'1', 2, CAST(N'2019-10-01T00:00:00.000' AS DateTime), 1, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [borrado]) VALUES (1049, N'4', 17, CAST(N'2021-09-02T00:00:00.000' AS DateTime), 2, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [borrado]) VALUES (1050, N'3', 14, CAST(N'2021-09-01T00:00:00.000' AS DateTime), 4, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [borrado]) VALUES (1051, N'2', 10, CAST(N'2021-08-03T00:00:00.000' AS DateTime), 5, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [borrado]) VALUES (1052, N'9', 13, CAST(N'2021-11-14T00:00:00.000' AS DateTime), 6, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [borrado]) VALUES (1053, N'8', 12, CAST(N'2021-11-14T00:00:00.000' AS DateTime), 7, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [borrado]) VALUES (1054, N'7', 2, CAST(N'2021-11-14T00:00:00.000' AS DateTime), 2, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [borrado]) VALUES (1055, N'6', 17, CAST(N'2021-11-14T00:00:00.000' AS DateTime), 4, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [borrado]) VALUES (1056, N'5', 14, CAST(N'2021-11-14T00:00:00.000' AS DateTime), 6, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [borrado]) VALUES (1059, N'11', 17, CAST(N'2021-11-15T00:00:00.000' AS DateTime), 1, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [borrado]) VALUES (1060, N'10', 12, CAST(N'2021-11-15T00:00:00.000' AS DateTime), 4, 0)
INSERT [dbo].[Facturas] ([id_factura], [numero_factura], [id_cliente], [fecha], [id_usuario_creador], [borrado]) VALUES (1061, N'12', 2, CAST(N'2021-11-16T00:00:00.000' AS DateTime), 6, 0)
SET IDENTITY_INSERT [dbo].[Facturas] OFF
GO
SET IDENTITY_INSERT [dbo].[FacturasDetalle] ON 

INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2020, 1048, 1, NULL, 1008, NULL, CAST(5000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2021, 1048, 2, NULL, 1009, NULL, CAST(1000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2022, 1048, 3, 4, NULL, NULL, CAST(2500 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2023, 1049, 1, NULL, 1004, NULL, CAST(10000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2024, 1049, 2, NULL, 1005, NULL, CAST(5000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2025, 1049, 3, 1, NULL, NULL, CAST(6000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2026, 1049, 4, NULL, 1010, NULL, CAST(7000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2027, 1050, 1, NULL, 1009, NULL, CAST(7000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2028, 1050, 2, 3, NULL, NULL, CAST(1500 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2029, 1050, 3, NULL, 1004, NULL, CAST(5000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2030, 1050, 4, NULL, 1007, NULL, CAST(8000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2031, 1051, 1, NULL, 1010, NULL, CAST(10000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2032, 1051, 2, NULL, 1005, NULL, CAST(50000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2033, 1051, 3, 4, NULL, NULL, CAST(20000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2034, 1052, 1, NULL, 1009, NULL, CAST(5000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2035, 1052, 2, NULL, 1006, NULL, CAST(6000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2036, 1052, 3, NULL, 1005, NULL, CAST(8000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2037, 1052, 4, 1, NULL, NULL, CAST(4000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2038, 1052, 5, 2, NULL, NULL, CAST(7000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2039, 1053, 1, NULL, 1011, NULL, CAST(50000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2040, 1053, 2, NULL, 1010, NULL, CAST(8000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2041, 1053, 3, 4, NULL, NULL, CAST(30000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2042, 1053, 4, NULL, 1007, NULL, CAST(6000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2043, 1053, 5, 2, NULL, NULL, CAST(7000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2044, 1054, 1, NULL, 1011, NULL, CAST(1000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2045, 1054, 2, 3, NULL, NULL, CAST(5000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2046, 1054, 3, 2, NULL, NULL, CAST(6000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2047, 1055, 1, NULL, 1011, NULL, CAST(7000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2048, 1055, 2, NULL, 1009, NULL, CAST(9000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2049, 1055, 3, 3, NULL, NULL, CAST(5000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2050, 1055, 4, 4, NULL, NULL, CAST(6000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2051, 1056, 1, NULL, 1010, NULL, CAST(8000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2052, 1056, 2, 4, NULL, NULL, CAST(5000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2053, 1056, 3, NULL, 1008, NULL, CAST(7000 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2058, 1059, 1, NULL, 1004, NULL, CAST(500 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2059, 1059, 2, 1, NULL, NULL, CAST(600 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2060, 1060, 1, NULL, 1005, NULL, CAST(5 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2061, 1061, 1, NULL, 1004, NULL, CAST(100 AS Decimal(18, 0)), 0)
INSERT [dbo].[FacturasDetalle] ([id_detalle_factura], [id_factura], [numero_orden], [id_producto], [id_proyecto], [id_ciclo_prueba], [precio], [borrado]) VALUES (2062, 1061, 2, 1, NULL, NULL, CAST(200 AS Decimal(18, 0)), 0)
SET IDENTITY_INSERT [dbo].[FacturasDetalle] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (1, N'Software de gestion', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (2, N'Software de gestion de identidad', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (3, N'Software de auditoria', 0)
INSERT [dbo].[Productos] ([id_producto], [nombre], [borrado]) VALUES (4, N'Soft. Vulnerabilidades', 0)
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
SET IDENTITY_INSERT [dbo].[Proyectos] ON 

INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (1004, 1, N'Generador de precios', N'1.0.1', N'Generar precios', 2, N'0         ')
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (1005, 1, N'Administrador de productos', N'1.0.2', N'Administrar productos', 4, N'0         ')
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (1006, 2, N'Identificador Facial', N'3.0.4', N'Identificar rasgos faciales', 1, N'0         ')
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (1007, 2, N'Generador de contraseñas', N'3.0.3', N'Generar contraseñas', 5, N'0         ')
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (1008, 1, N'Administrador de Impuestos(Robos)', N'4.0.1', N'Gestionar robo politico', 5, N'0         ')
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (1009, 3, N'Administrador de tasas', N'1.2.3', N'Gestionar ineficiencia estatal', 7, N'0         ')
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (1010, 4, N'Pruebas de estres', N'1.1.2', N'Pruebas de estres ', 1, N'0         ')
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (1011, 4, N'Antispyware', N'1.1.3', N'Detectar espias', 6, N'0         ')
INSERT [dbo].[Proyectos] ([id_proyecto], [id_producto], [descripcion], [version], [alcance], [id_responsable], [borrado]) VALUES (2004, 3, N'Codificacion de producto', N'3.3.4', N'Codificar productos', 5, N'0         ')
SET IDENTITY_INSERT [dbo].[Proyectos] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (1, 1, N'administrador', N'12345', N'admin@gmail.com', N'S', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (2, 2, N'Tester Ariel', N'12345', N'ariel@gmail.com', N'N', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (4, 3, N'Tester Miguel', N'12345', N'miguel@gmail.com', N'S', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (5, 2, N'Tester Ana', N'12345', N'ana@gmail.com', N'N', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (6, 3, N'Tester Diego', N'12345', N'diego@gmail.com', N'N', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (7, 4, N'Tester Micaela', N'12345', N'mica@gmail.com', N'S', 0)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
ALTER TABLE [dbo].[Productos] ADD  CONSTRAINT [DF_Productos_borrado]  DEFAULT ((0)) FOR [borrado]
GO
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [DF_Usuarios_borrado]  DEFAULT ((0)) FOR [borrado]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Barrios] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[Barrios] ([id_barrio])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Barrios]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Contactos] FOREIGN KEY([id_contacto])
REFERENCES [dbo].[Contactos] ([id_contacto])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Contactos]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Clientes] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Clientes]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FK_Facturas_Usuarios] FOREIGN KEY([id_usuario_creador])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FK_Facturas_Usuarios]
GO
ALTER TABLE [dbo].[FacturasDetalle]  WITH CHECK ADD  CONSTRAINT [FK_FacturasDetalle_CiclosPrueba] FOREIGN KEY([id_ciclo_prueba])
REFERENCES [dbo].[CiclosPrueba] ([id_ciclo_prueba])
GO
ALTER TABLE [dbo].[FacturasDetalle] CHECK CONSTRAINT [FK_FacturasDetalle_CiclosPrueba]
GO
ALTER TABLE [dbo].[FacturasDetalle]  WITH CHECK ADD  CONSTRAINT [FK_FacturasDetalle_Facturas] FOREIGN KEY([id_factura])
REFERENCES [dbo].[Facturas] ([id_factura])
GO
ALTER TABLE [dbo].[FacturasDetalle] CHECK CONSTRAINT [FK_FacturasDetalle_Facturas]
GO
ALTER TABLE [dbo].[FacturasDetalle]  WITH CHECK ADD  CONSTRAINT [FK_FacturasDetalle_Productos] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Productos] ([id_producto])
GO
ALTER TABLE [dbo].[FacturasDetalle] CHECK CONSTRAINT [FK_FacturasDetalle_Productos]
GO
ALTER TABLE [dbo].[FacturasDetalle]  WITH CHECK ADD  CONSTRAINT [FK_FacturasDetalle_Proyectos] FOREIGN KEY([id_proyecto])
REFERENCES [dbo].[Proyectos] ([id_proyecto])
GO
ALTER TABLE [dbo].[FacturasDetalle] CHECK CONSTRAINT [FK_FacturasDetalle_Proyectos]
GO
ALTER TABLE [dbo].[Proyectos]  WITH CHECK ADD  CONSTRAINT [FK_Proyectos_Producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Productos] ([id_producto])
GO
ALTER TABLE [dbo].[Proyectos] CHECK CONSTRAINT [FK_Proyectos_Producto]
GO
ALTER TABLE [dbo].[Proyectos]  WITH CHECK ADD  CONSTRAINT [FK_Proyectos_Responsable] FOREIGN KEY([id_responsable])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Proyectos] CHECK CONSTRAINT [FK_Proyectos_Responsable]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Perfiles] FOREIGN KEY([id_perfil])
REFERENCES [dbo].[Perfiles] ([id_perfil])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Perfiles]
GO
