CREATE TABLE Pieces (
  Code INTEGER PRIMARY KEY NOT NULL,
  Name TEXT NOT NULL
);

CREATE TABLE Providers (
 Code TEXT PRIMARY KEY NOT NULL,
 Name TEXT NOT NULL
);

CREATE TABLE Provides (
  Piece INTEGER
    CONSTRAINT fk_Pieces_Code REFERENCES Pieces(Code),
  Provider TEXT
    CONSTRAINT fk_Providers_Code REFERENCES Providers(Code),
  Price INTEGER NOT NULL,
  PRIMARY KEY(Piece, Provider)
);


