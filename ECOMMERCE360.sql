USE [ECOMMERCE360]
GO
/****** Object:  Table [dbo].[eCliente]    Script Date: 3/20/2024 2:48:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[eCliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](60) NOT NULL,
	[apellidoPaterno] [varchar](60) NOT NULL,
	[apellidoMaterno] [varchar](60) NOT NULL,
	[direccion] [varchar](250) NOT NULL,
	[telefono] [varchar](10) NOT NULL,
	[correo] [varchar](80) NOT NULL,
	[codigoPostal] [varchar](6) NOT NULL,
 CONSTRAINT [PK_idCliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eCodigoPostal]    Script Date: 3/20/2024 2:48:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[eCodigoPostal](
	[codigoPostal] [varchar](6) NOT NULL,
	[colonia] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ codigoPostal] PRIMARY KEY CLUSTERED 
(
	[codigoPostal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eOrdenCompra]    Script Date: 3/20/2024 2:48:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eOrdenCompra](
	[idOrden] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[monto] [decimal](10, 2) NOT NULL,
	[cantidadProducto] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[idCliente] [int] NOT NULL,
	[idTipoPago] [int] NOT NULL,
 CONSTRAINT [PK_idOrden] PRIMARY KEY CLUSTERED 
(
	[idOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[eProducto]    Script Date: 3/20/2024 2:48:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eProducto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[descripcion] [varchar](250) NOT NULL,
	[precio] [decimal](10, 2) NOT NULL,
	[stockInventario] [int] NOT NULL,
	[stockMaximo] [int] NOT NULL,
	[stockMinimo] [int] NOT NULL,
	[idProveedor] [int] NOT NULL,
 CONSTRAINT [PK_idProducto] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eProveedor]    Script Date: 3/20/2024 2:48:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[eProveedor](
	[idProveedor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NOT NULL,
	[producto] [varchar](100) NOT NULL,
	[marca] [varchar](100) NOT NULL,
	[direccion] [varchar](250) NOT NULL,
	[telefono] [varchar](10) NOT NULL,
	[correo] [varchar](80) NOT NULL,
	[codigoPostal] [varchar](6) NOT NULL,
 CONSTRAINT [PK_idProveedor] PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[eTipoPago]    Script Date: 3/20/2024 2:48:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[eTipoPago](
	[idTipoPago] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_idTipoPago] PRIMARY KEY CLUSTERED 
(
	[idTipoPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[eCodigoPostal] ([codigoPostal], [colonia]) VALUES (N'03510', N'Benito Juárez Col. Nápoles')
INSERT [dbo].[eCodigoPostal] ([codigoPostal], [colonia]) VALUES (N'04738', N'Coyoacán Col. Pedregal de Carrasco')
INSERT [dbo].[eCodigoPostal] ([codigoPostal], [colonia]) VALUES (N'06200', N'Cuauhtémoc Col. Morelos')
INSERT [dbo].[eCodigoPostal] ([codigoPostal], [colonia]) VALUES (N'11450', N'Miguel Hidalgo Col. Observatorio')
INSERT [dbo].[eCodigoPostal] ([codigoPostal], [colonia]) VALUES (N'15020', N'Venustiano Carranza Col. Puebla')
SET IDENTITY_INSERT [dbo].[eProducto] ON 

INSERT [dbo].[eProducto] ([idProducto], [nombre], [descripcion], [precio], [stockInventario], [stockMaximo], [stockMinimo], [idProveedor]) VALUES (1, N'Yoga 9i', N'Lenovo 2023 - Portátil 2 en 1 Yoga 7i, visualización táctil IPS de 14 pulgadas 2.2K IPS de 13ª generación Intel Core i7-1355U (10 núcleos), 16GB RAM, 512GB SSD, gráficos Intel Iris Xe, teclado retroiluminado, Wi-Fi 6E, Windows 11 Home', CAST(20434.00 AS Decimal(10, 2)), 10, 20, 5, 1)
INSERT [dbo].[eProducto] ([idProducto], [nombre], [descripcion], [precio], [stockInventario], [stockMaximo], [stockMinimo], [idProveedor]) VALUES (3, N'iPhone Pro 15', N'El iPhone 15 Pro tiene un diseño resistente y ligero, con titanio de calidad aeroespacial y parte posterior de vidrio mate texturizado. Frente de Ceramic Shield, más duro que el vidrio más duro de cualquier smartphone.', CAST(23899.00 AS Decimal(10, 2)), 10, 20, 5, 1)
INSERT [dbo].[eProducto] ([idProducto], [nombre], [descripcion], [precio], [stockInventario], [stockMaximo], [stockMinimo], [idProveedor]) VALUES (4, N'Alexa Echo Doh', N'Echo Dot 5.ª (generación, modelo de 2022) con reloj | Bocina inteligente con reloj y Alexa | Blanco', CAST(1549.00 AS Decimal(10, 2)), 10, 20, 5, 1)
SET IDENTITY_INSERT [dbo].[eProducto] OFF
SET IDENTITY_INSERT [dbo].[eProveedor] ON 

INSERT [dbo].[eProveedor] ([idProveedor], [nombre], [producto], [marca], [direccion], [telefono], [correo], [codigoPostal]) VALUES (1, N'Mario Perez', N'Yoga 9i', N'Lenovo', N'Miguel Hidalgo Col. Agricultura', N'5523457891', N'mario@gmail.com', N'11450')
INSERT [dbo].[eProveedor] ([idProveedor], [nombre], [producto], [marca], [direccion], [telefono], [correo], [codigoPostal]) VALUES (2, N'Azucena Rivas', N'iPhone Pro 15', N'Apple', N'Benito Juárez Col. Nápoles', N'5523457891', N'azucena@gmail.com', N'03510')
INSERT [dbo].[eProveedor] ([idProveedor], [nombre], [producto], [marca], [direccion], [telefono], [correo], [codigoPostal]) VALUES (3, N'Karla Mendoza', N'Alexa Echo', N'Amazon', N'Coyoacán Col. Pedregal de Carrasco', N'5523457891', N'azucena@gmail.com', N'04738')
SET IDENTITY_INSERT [dbo].[eProveedor] OFF
SET IDENTITY_INSERT [dbo].[eTipoPago] ON 

INSERT [dbo].[eTipoPago] ([idTipoPago], [descripcion]) VALUES (1, N'Efectivo')
INSERT [dbo].[eTipoPago] ([idTipoPago], [descripcion]) VALUES (2, N'Tarjeta de débito')
INSERT [dbo].[eTipoPago] ([idTipoPago], [descripcion]) VALUES (3, N'Tarjeta de crédito')
SET IDENTITY_INSERT [dbo].[eTipoPago] OFF
ALTER TABLE [dbo].[eCliente]  WITH CHECK ADD  CONSTRAINT [fk_ codigoPostal] FOREIGN KEY([codigoPostal])
REFERENCES [dbo].[eCodigoPostal] ([codigoPostal])
GO
ALTER TABLE [dbo].[eCliente] CHECK CONSTRAINT [fk_ codigoPostal]
GO
ALTER TABLE [dbo].[eOrdenCompra]  WITH CHECK ADD  CONSTRAINT [fk_idCliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[eCliente] ([idCliente])
GO
ALTER TABLE [dbo].[eOrdenCompra] CHECK CONSTRAINT [fk_idCliente]
GO
ALTER TABLE [dbo].[eOrdenCompra]  WITH CHECK ADD  CONSTRAINT [fk_idProducto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[eProducto] ([idProducto])
GO
ALTER TABLE [dbo].[eOrdenCompra] CHECK CONSTRAINT [fk_idProducto]
GO
ALTER TABLE [dbo].[eOrdenCompra]  WITH CHECK ADD  CONSTRAINT [fk_idTipoPago] FOREIGN KEY([idTipoPago])
REFERENCES [dbo].[eTipoPago] ([idTipoPago])
GO
ALTER TABLE [dbo].[eOrdenCompra] CHECK CONSTRAINT [fk_idTipoPago]
GO
ALTER TABLE [dbo].[eProducto]  WITH CHECK ADD  CONSTRAINT [fk_idProveedor] FOREIGN KEY([idProveedor])
REFERENCES [dbo].[eProveedor] ([idProveedor])
GO
ALTER TABLE [dbo].[eProducto] CHECK CONSTRAINT [fk_idProveedor]
GO
ALTER TABLE [dbo].[eProveedor]  WITH CHECK ADD  CONSTRAINT [fk_ codigoPostalProv] FOREIGN KEY([codigoPostal])
REFERENCES [dbo].[eCodigoPostal] ([codigoPostal])
GO
ALTER TABLE [dbo].[eProveedor] CHECK CONSTRAINT [fk_ codigoPostalProv]
GO
