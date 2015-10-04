SELECT Name FROM Pieces;

SELECT * FROM Providers;

SELECT Piece, AVG(Price) FROM Provides GROUP BY Piece;

SELECT Providers.Name FROM Providers INNER JOIN Provides ON Providers.Code = Provides.Provider AND Provides.Piece = 1;

SELECT Pieces.Name FROM Pieces INNER JOIN Provides ON Pieces.Code = Provides.Piece AND Provides.Provider = 'HAL';

SELECT Pieces.Name, Providers.Name, Price FROM Pieces INNER JOIN Provides ON Pieces.Code = Piece  INNER JOIN Providers ON Providers.Code = Provider WHERE Price = ( SELECT MAX(Price) FROM Provides WHERE Piece = Pieces.Code);

INSERT INTO Provides VALUES (1, 'TNBC', 7);

UPDATE Provides SET Price = Price + 1;

DELETE FROM Provides WHERE Provider = 'RBT' AND Piece = 4;

DELETE FROM Provides WHERE Provider = 'RBT';