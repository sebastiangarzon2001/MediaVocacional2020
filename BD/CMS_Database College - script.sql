USE [College]
GO
/****** Object:  Table [dbo].[Asistente]    Script Date: 10/09/2020 09:02:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Asistente](
	[id_asistente] [int] IDENTITY(1,1) NOT NULL,
	[nombre_asistente] [varchar](50) NOT NULL,
	[colegio_asistente] [varchar](50) NOT NULL,
	[id_course] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[colegio]    Script Date: 10/09/2020 09:02:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[colegio](
	[id_colegio] [int] IDENTITY(1,1) NOT NULL,
	[nombre_colegio] [nchar](50) NOT NULL,
	[id_curso] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 10/09/2020 09:02:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [int] NOT NULL,
	[CourseName] [varchar](60) NOT NULL,
	[Semester] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Evidencia]    Script Date: 10/09/2020 09:02:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evidencia](
	[id_evidencia] [int] IDENTITY(1,1) NOT NULL,
	[nombre_evidencia] [nchar](50) NOT NULL,
	[file_url] [nchar](50) NOT NULL,
	[tiempo_evidencia] [timestamp] NOT NULL,
	[id_curso] [int] NOT NULL,
	[id_sujeto] [int] NOT NULL,
	[shift] [nchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FeeDetails]    Script Date: 10/09/2020 09:02:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FeeDetails](
	[FeeId] [int] NOT NULL,
	[CategoryName] [varchar](60) NOT NULL,
	[PaidDate] [varchar](12) NOT NULL,
	[TotalAmount] [varchar](16) NOT NULL,
	[PaidAmount] [varchar](16) NOT NULL,
	[DueAmount] [varchar](16) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FeeManage]    Script Date: 10/09/2020 09:02:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FeeManage](
	[Id] [int] NOT NULL,
	[Category] [varchar](60) NULL,
	[Amount] [varchar](16) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FeeMaster]    Script Date: 10/09/2020 09:02:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FeeMaster](
	[FeeId] [int] NOT NULL,
	[StudentName] [varchar](60) NULL,
	[RollNo] [varchar](15) NULL,
	[Course] [varchar](60) NULL,
	[Semester] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[FeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RegStudent]    Script Date: 10/09/2020 09:02:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegStudent](
	[Id] [int] NOT NULL,
	[RollNo] [varchar](15) NOT NULL,
	[StudentName] [varchar](60) NULL,
	[Gender] [char](9) NULL,
	[Address] [varchar](35) NULL,
	[DateOfBirth] [char](10) NULL,
	[AdmissionDate] [char](10) NULL,
	[PhoneNo] [varchar](15) NULL,
	[Email] [varchar](60) NULL,
	[Country] [varchar](50) NULL,
	[Shift] [varchar](12) NULL,
	[Course] [varchar](60) NULL,
	[Semester] [varchar](5) NULL,
	[StudentPic] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 10/09/2020 09:02:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rol](
	[id_rol] [int] IDENTITY(1,1) NOT NULL,
	[nombre_rol] [varchar](50) NOT NULL,
	[tipo_rol] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 10/09/2020 09:02:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Schedule](
	[Id] [int] NOT NULL,
	[TeacherName] [varchar](50) NULL,
	[Course] [varchar](60) NULL,
	[Semester] [varchar](5) NULL,
	[SubjectName] [varchar](60) NULL,
	[SDay] [varchar](15) NULL,
	[Shift] [varchar](12) NULL,
	[STime] [varchar](20) NULL,
	[Period] [varchar](2) NULL,
	[TeacherCode] [int] NOT NULL,
	[CourseCode] [int] NOT NULL,
	[SubjectCode] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Secretario]    Script Date: 10/09/2020 09:02:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Secretario](
	[id_secretario] [int] IDENTITY(1,1) NOT NULL,
	[nombre_secretario] [varchar](50) NOT NULL,
	[id_rol] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 10/09/2020 09:02:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semester](
	[SemesterId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SemesterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StuAttendance]    Script Date: 10/09/2020 09:02:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StuAttendance](
	[Id] [int] NOT NULL,
	[StudentName] [varchar](60) NOT NULL,
	[RollNo] [varchar](11) NOT NULL,
	[Course] [varchar](60) NULL,
	[Semester] [int] NULL,
	[AttendanceDate] [varchar](12) NOT NULL,
	[Attendance] [char](9) NOT NULL,
	[StuId] [int] NULL,
	[CourseId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubjectDetails]    Script Date: 10/09/2020 09:02:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubjectDetails](
	[Id] [int] NOT NULL,
	[CourseName] [varchar](60) NULL,
	[Semester] [varchar](5) NULL,
	[SubjectName] [varchar](60) NULL,
	[Credits] [varchar](5) NULL,
	[CourseId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TeacherAttendance]    Script Date: 10/09/2020 09:02:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TeacherAttendance](
	[Id] [int] NOT NULL,
	[TeacherName] [varchar](50) NULL,
	[AttendanceDate] [varchar](12) NULL,
	[Attendance] [varchar](10) NULL,
	[TeacherId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TeacherRegister]    Script Date: 10/09/2020 09:02:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TeacherRegister](
	[Id] [int] NOT NULL,
	[TeacherName] [varchar](50) NULL,
	[Gender] [varchar](8) NULL,
	[Address] [varchar](40) NULL,
	[RegisterDate] [varchar](12) NULL,
	[PhoneNo] [varchar](20) NULL,
	[Email] [varchar](60) NULL,
	[Experience] [varchar](25) NULL,
	[TPhoto] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ULogin]    Script Date: 10/09/2020 09:02:47 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ULogin](
	[UserId] [int] NOT NULL,
	[UserName] [varchar](80) NOT NULL,
	[LoginName] [varchar](80) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[UserType] [varchar](15) NOT NULL,
	[Active] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([id_rol], [nombre_rol], [tipo_rol]) VALUES (1, N'Administrador', N'1')
INSERT [dbo].[Rol] ([id_rol], [nombre_rol], [tipo_rol]) VALUES (2, N'Secretario', N'2')
INSERT [dbo].[Rol] ([id_rol], [nombre_rol], [tipo_rol]) VALUES (3, N'Asistente', N'3')
INSERT [dbo].[Rol] ([id_rol], [nombre_rol], [tipo_rol]) VALUES (4, N'Invitado', N'4')
INSERT [dbo].[Rol] ([id_rol], [nombre_rol], [tipo_rol]) VALUES (5, N'Docente', N'5')
INSERT [dbo].[Rol] ([id_rol], [nombre_rol], [tipo_rol]) VALUES (6, N'Estudiante', N'6')
SET IDENTITY_INSERT [dbo].[Rol] OFF
ALTER TABLE [dbo].[Course]  WITH CHECK ADD FOREIGN KEY([Semester])
REFERENCES [dbo].[Semester] ([SemesterId])
GO
ALTER TABLE [dbo].[FeeDetails]  WITH CHECK ADD FOREIGN KEY([FeeId])
REFERENCES [dbo].[FeeMaster] ([FeeId])
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD FOREIGN KEY([CourseCode])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD FOREIGN KEY([SubjectCode])
REFERENCES [dbo].[SubjectDetails] ([Id])
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD FOREIGN KEY([TeacherCode])
REFERENCES [dbo].[TeacherRegister] ([Id])
GO
ALTER TABLE [dbo].[StuAttendance]  WITH CHECK ADD FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[StuAttendance]  WITH CHECK ADD FOREIGN KEY([StuId])
REFERENCES [dbo].[RegStudent] ([Id])
GO
ALTER TABLE [dbo].[SubjectDetails]  WITH CHECK ADD FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([Id])
GO
ALTER TABLE [dbo].[TeacherAttendance]  WITH CHECK ADD FOREIGN KEY([TeacherId])
REFERENCES [dbo].[TeacherRegister] ([Id])
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'datos Colegio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'colegio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EvidenciaColegio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Evidencia'
GO
