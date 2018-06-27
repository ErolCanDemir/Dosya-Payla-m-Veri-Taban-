Create Table Ulke (
	Ulke_id INT PRIMARY KEY IDENTITY (1,1),
	Ulke_ad varchar(50),
	Ulke_kita varchar(50),
	Ulke_max_dosya_boyut varchar(50)
);
CREATE TABLE Kullanici (
	Kullanici_id INT PRIMARY KEY IDENTITY(1,1),
	Kullanici_ad varchar(50),
	Kullanici_soyad varchar(50),
	Kullanici_il varchar(50),
	Kullanici_meslek varchar(50),
	Ulke_id INT FOREIGN KEY REFERENCES Ulke(Ulke_id)
);
Create Table Tur (
	Tur_id INT PRIMARY KEY IDENTITY (1,1),
	Tur_ad varchar(50)
);
Create Table Sistem (
	Sistem_id INT PRIMARY KEY IDENTITY (1,1),
	Sistem_ad varchar(50),
	Sistem_T�r varchar(50),
	Sistem_Yazilim_Sirketi varchar(50),
	Sistem_Paylasim_Turu varchar(50)
);

Create Table Dosya (
	Dosya_no INT PRIMARY KEY IDENTITY (1,1),
	Kullanici_id INT FOREIGN KEY REFERENCES Kullanici(Kullanici_id),
	Tur_id INT FOREIGN KEY REFERENCES Tur(Tur_id),
	Dosya_ad varchar(50),
	Dosya_boyut varchar(50),
	Sistem_id INT FOREIGN KEY REFERENCES Sistem(Sistem_id),
);

Insert Into Ulke values ('T�rkiye','Avrupa','100.000 GB');
Insert Into Ulke values ('Amerika','Amerika K�tas�','500.000 GB');
Insert Into Ulke values ('�ngiltere','Avrupa','300.000 GB');
Insert Into Ulke values ('Hollanda','Avrupa','200.000 GB');
Insert Into Ulke values ('Fransa','Avrupa','600.000 GB');
Insert Into Ulke values ('Almanya','Avrupa','500.000 GB');
Insert Into Ulke values ('Bel�ika','Avrupa','200.000 GB');
Insert Into Ulke values ('Kenya','Afrika','10.000 GB');
Insert Into Ulke values ('Brezilya','G�ney Amerika','100.000 GB');

Insert Into Kullanici values ('Erol Can','Demir','Ankara','M�hendis',1);
Insert Into Kullanici values ('Murat','�oban','Ankara','��renci',1);
Insert Into Kullanici values ('Mehmet','Karahan','K�r�ehir','Doktor',1);
Insert Into Kullanici values ('�smet Can','Ulu�','Ordu','�ift�i',1);
Insert Into Kullanici values ('Hakan','Bozta�','�stanbul','��renci',1);
Insert Into Kullanici values ('Ali','Ku�','�zmir','Yazar',1);
Insert Into Kullanici values ('Mevl�t','�ahinli','Antalya','Teknisyen',1);
Insert Into Kullanici values ('Ayla','�ahinli','Antalya','Teknisyen',1);
Insert Into Kullanici values ('�sa','Karahan','K�r�kkale','Avukat',1);
Insert Into Kullanici values ('Ahmet','Hamdi','Ankara','M�hendis',1);
Insert Into Kullanici values ('Timo','Werner','Munich','M�hendis',6);
Insert Into Kullanici values ('Danny','Rose','Londra','Sporcu',3);
Insert Into Kullanici values ('Gabriel','Jesus','Rio','Doktor',9);
Insert Into Kullanici values ('Romelu','Lukaku','B�r�ksel','Avukat',7);
Insert Into Kullanici values ('Kevin','De Bruyne','B�r�ksel','M�hendis',7);
Insert Into Kullanici values ('Thomas','M�ller','Frankurt','Sporcu',6);
Insert Into Kullanici values ('Olivier','Giroud','Paris','Hem�ire',5);
Insert Into Kullanici values ('Wesley','Sneijder','Amsterdam','M�hendis',4);
Insert Into Kullanici values ('Mert','Ali','Gaziantep','��retmen',1);
Insert Into Kullanici values ('Kaz�m','Kozan','Ankara','��retmen',1);
Insert Into Kullanici values ('Peter','Paker','Washington','��renci',2);

Insert Into Tur values ('Metin Belgesi');
Insert Into Tur values ('Rar-S�k��t�r�lm�� Dosya');
Insert Into Tur values ('Word Belgesi');
Insert Into Tur values ('C Dosyas�');
Insert Into Tur values ('C# Dosyas�');
Insert Into Tur values ('Exe-Uygulama Dosyas�');
Insert Into Tur values ('MP3-M�zik');


Insert Into Sistem values ('Google Drive','�nternet Platformu','Google','S�n�rs�z');
Insert Into Sistem values ('�cloud','�nternet Platformu','Apple','S�n�rs�z');
Insert Into Sistem values ('YandexDisk','�nternet Platformu','Yandex','S�n�rs�z');
Insert Into Sistem values ('MediaFire','�nternet Platformu','MediaFire Software','S�n�rs�z');
Insert Into Sistem values ('OneDrive','�nternet Platformu','Microsoft','S�n�rs�z');
Insert Into Sistem values ('DropBox','�nternet Platformu ve Masa�st� Program�','Google','S�n�rs�z');
Insert Into Sistem values ('Mega','�nternet Platformu','Mega','S�n�rl�');
Insert Into Sistem values ('Dosya.tc','�nternet Platformu','Ki�isel','S�n�rl�');
Insert Into Sistem values ('uTorrent','Masa�st� Program�','Microsoft','S�n�rs�z');
Insert Into Sistem values ('BearShare','Masa�st� Program�','Microsoft','S�n�rl�');
Insert Into Sistem values ('Vuze','Masa�st� Program�','Azureus Software','S�n�rl�');
Insert Into Sistem values ('iMesh','Masa�st� Program�','imesh','S�n�rs�z');
Insert Into Sistem values ('LimeWire','Masa�st� Program�','LimeWire LLC','S�n�rs�z');

Insert Into Dosya values (1,1,'ilk.txt','10 GB',1);
Insert Into Dosya values (1,2,'aa.rar','3 GB',2);
Insert Into Dosya values (2,3,'xd.doc','5 GB',3);
Insert Into Dosya values (1,4,'uygulama.c','1 GB',4);
Insert Into Dosya values (15,1,'kk.txt','1 GB',5);
Insert Into Dosya values (12,3,'gonderi.doc','2 GB',6);
Insert Into Dosya values (4,1,'rapor.txt','500 MB',7);
Insert Into Dosya values (8,4,'deneme.c','700 MB',8);
Insert Into Dosya values (6,6,'opera.exe','3 GB',9);
Insert Into Dosya values (8,5,'arar.cls','50 GB',10);
Insert Into Dosya values (3,2,'sirket.rar','50 GB',11);
Insert Into Dosya values (11,1,'alim.txt','10 GB',12);
Insert Into Dosya values (10,1,'satim.txt','5 GB',13);
Insert Into Dosya values (9,3,'kar.doc','1 GB',4);
Insert Into Dosya values (5,4,'aylik.c','500 MB',6);
Insert Into Dosya values (7,6,'uyg.exe','1 GB',3);
Insert Into Dosya values (13,3,'araba.doc','600 MB',1);
Insert Into Dosya values (14,3,'ev.doc','1 GB',2);
Insert Into Dosya values (16,7,'yeni.mp3','1 GB',5);

select * from Sistem where Sistem_id IN (
	select Sistem_id from Dosya where Kullanici_id IN (
		select Kullanici_id from Kullanici where Kullanici_ad = 'Erol Can')); /* Ad� Erol Can olan kullan�c�n�n kulland��� sistem ve �zellikleri. */

select * from Tur where Tur_id IN (
	select Tur_id from Dosya where Kullanici_id IN (
		select Kullanici_id from Kullanici where Ulke_id IN (
			select Ulke_id from Ulke where Ulke_ad = 'T�rkiye'))); /* T�rkiyede Kullan�lan dosya t�rleri. */

select Count(Dosya_no) AS 'Bel�ika dan Dosya' from Dosya where Kullanici_id IN  (
	select Kullanici_id from Kullanici where Ulke_id IN (
		select Ulke_id from Ulke where Ulke_ad = 'Bel�ika')); /* Bel�ikadan g�nderilen dosyalar�n say�s�. */

select * from Sistem where Sistem_id IN (
	select Sistem_id from Dosya where Kullanici_id IN (
		select Kullanici_id from Kullanici where Kullanici_meslek = 'M�hendis')); /* Mesle�i m�hendis olanlar�n kulland��� sistemler. */

select * from Ulke where Ulke_id IN(
	select Ulke_id from Kullanici where Kullanici_id IN (
		select Kullanici_id from Dosya where Sistem_id IN (
			select Sistem_id from Sistem where Sistem_Yazilim_Sirketi = 'Google'))); /* Google yaz�l�m �irketinin kullan�ld��� �lkeler. */

select * from Sistem where Sistem_id IN (
	select Sistem_id from Dosya where Kullanici_id IN (
		select Kullanici_id from Kullanici where Ulke_id IN (
			select Ulke_id from Ulke where Ulke_ad = 'Bel�ika' ))); /* Bel�ikada kullan�lan dosya sistemleri */

select Count(Dosya_no) As 'Google ile Yollanan' from Dosya where Sistem_id IN (
	select Sistem_id from Sistem where Sistem_Yazilim_Sirketi= 'Google'); /* Google yaz�l�m �irketinin �retti�i sistemler kullanarak payla��lan dosyalar�n say�s�. */

select Count(Tur_id) AS 'Murat Tur Sayisi'  from Tur where Tur_id IN (
	select Tur_id from Dosya where Kullanici_id IN (
		select Kullanici_id from Kullanici where Kullanici_ad = 'Murat')); /* Ad� Murat olan kullan�c�n�n kulland��� t�r say�s�. */