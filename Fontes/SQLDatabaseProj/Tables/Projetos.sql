﻿CREATE TABLE [dbo].[Projetos]
(
	[IdProjeto] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Nome] VARCHAR(1024) NOT NULL, 
    [ClienteProjeto] VARCHAR(1024) NOT NULL, 
    [DataInicio] DATE NOT NULL, 
    [DataFim] DATE NOT NULL, 
    [DataReal] DATE NOT NULL, 
    [IdUserResponsavelProjeto] INT NOT NULL, 
    [IdUserAdmProjeto] INT NOT NULL, 
    CONSTRAINT [FK_Projetos_Usuarios_Responsavel] FOREIGN KEY ([IdUserResponsavelProjeto]) REFERENCES [Usuarios]([IdUser]), 
    CONSTRAINT [FK_Projetos_Usuarios_Administrador] FOREIGN KEY ([IdUserAdmProjeto]) REFERENCES [Usuarios]([IdUser]) 
 
    
)

GO

CREATE UNIQUE INDEX [IX_Projetos_Nome] ON [dbo].[Projetos] ([Nome])
