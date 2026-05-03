CREATE DATABASE LoginSystem
USE LoginSystem

CREATE TABLE tKullanicilar (
    ID INT IDENTITY PRIMARY KEY,
    Eposta VARCHAR(255),
    Sifre VARCHAR(50)
);

CREATE TABLE tLoglar (
    ID          INT IDENTITY PRIMARY KEY,
    Eposta      VARCHAR(255),
    Sonuc       VARCHAR(100),
    Tarih       DATETIME,
    IP          VARCHAR(50)
);
GO

INSERT INTO tKullanicilar VALUES ('cihad@gmail.com', '059FCC0D');
GO

CREATE PROCEDURE pGirisSorgulama
    @Eposta VARCHAR(255),
    @Sifre  VARCHAR(50),
    @IP     VARCHAR(50)
AS
BEGIN
    DECLARE @asilSifre VARCHAR(50);
    DECLARE @Sonuc     VARCHAR(100);

    SELECT @asilSifre = Sifre
    FROM tKullanicilar
    WHERE Eposta = @Eposta;

    IF @asilSifre IS NULL
        SET @Sonuc = 'Böyle bir kullanýcý bulunamadý';
    ELSE IF @asilSifre != @Sifre
        SET @Sonuc = 'Þifrenizi mi unuttunuz?';
    ELSE
        SET @Sonuc = 'Giriþ baþarýlý';

    INSERT INTO tLoglar (Eposta, Sonuc, Tarih, IP)
    VALUES (@Eposta, @Sonuc, GETDATE(), @IP);

    SELECT @Sonuc AS SistemMesaji;
END
GO

EXEC pGirisSorgulama 'cihad@gmail.com', '059FCC0D', '192.168.1.1'; -- Baþarýlý
EXEC pGirisSorgulama 'cihad@gmail.com', '069FCC0D', '192.168.1.1'; -- Yanlýþ þifre
EXEC pGirisSorgulama 'yanlis@gmail.com','059FCC0D', '192.168.1.1'; -- Kullanýcý yok