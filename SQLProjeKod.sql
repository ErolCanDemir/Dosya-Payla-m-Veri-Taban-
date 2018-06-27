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
	Sistem_Tür varchar(50),
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

Insert Into Ulke values ('Türkiye','Avrupa','100.000 GB');
Insert Into Ulke values ('Amerika','Amerika Kýtasý','500.000 GB');
Insert Into Ulke values ('Ýngiltere','Avrupa','300.000 GB');
Insert Into Ulke values ('Hollanda','Avrupa','200.000 GB');
Insert Into Ulke values ('Fransa','Avrupa','600.000 GB');
Insert Into Ulke values ('Almanya','Avrupa','500.000 GB');
Insert Into Ulke values ('Belçika','Avrupa','200.000 GB');
Insert Into Ulke values ('Kenya','Afrika','10.000 GB');
Insert Into Ulke values ('Brezilya','Güney Amerika','100.000 GB');

Insert Into Kullanici values ('Erol Can','Demir','Ankara','Mühendis',1);
Insert Into Kullanici values ('Murat','Çoban','Ankara','Öðrenci',1);
Insert Into Kullanici values ('Mehmet','Karahan','Kýrþehir','Doktor',1);
Insert Into Kullanici values ('Ýsmet Can','Uluð','Ordu','Çiftçi',1);
Insert Into Kullanici values ('Hakan','Boztaþ','Ýstanbul','Öðrenci',1);
Insert Into Kullanici values ('Ali','Kuþ','Ýzmir','Yazar',1);
Insert Into Kullanici values ('Mevlüt','Þahinli','Antalya','Teknisyen',1);
Insert Into Kullanici values ('Ayla','Þahinli','Antalya','Teknisyen',1);
Insert Into Kullanici values ('Ýsa','Karahan','Kýrýkkale','Avukat',1);
Insert Into Kullanici values ('Ahmet','Hamdi','Ankara','Mühendis',1);
Insert Into Kullanici values ('Timo','Werner','Munich','Mühendis',6);
Insert Into Kullanici values ('Danny','Rose','Londra','Sporcu',3);
Insert Into Kullanici values ('Gabriel','Jesus','Rio','Doktor',9);
Insert Into Kullanici values ('Romelu','Lukaku','Bürüksel','Avukat',7);
Insert Into Kullanici values ('Kevin','De Bruyne','Bürüksel','Mühendis',7);
Insert Into Kullanici values ('Thomas','Müller','Frankurt','Sporcu',6);
Insert Into Kullanici values ('Olivier','Giroud','Paris','Hemþire',5);
Insert Into Kullanici values ('Wesley','Sneijder','Amsterdam','Mühendis',4);
Insert Into Kullanici values ('Mert','Ali','Gaziantep','Öðretmen',1);
Insert Into Kullanici values ('Kazým','Kozan','Ankara','Öðretmen',1);
Insert Into Kullanici values ('Peter','Paker','Washington','Öðrenci',2);

Insert Into Tur values ('Metin Belgesi');
Insert Into Tur values ('Rar-Sýkýþtýrýlmýþ Dosya');
Insert Into Tur values ('Word Belgesi');
Insert Into Tur values ('C Dosyasý');
Insert Into Tur values ('C# Dosyasý');
Insert Into Tur values ('Exe-Uygulama Dosyasý');
Insert Into Tur values ('MP3-Müzik');


Insert Into Sistem values ('Google Drive','Ýnternet Platformu','Google','Sýnýrsýz');
Insert Into Sistem values ('Ýcloud','Ýnternet Platformu','Apple','Sýnýrsýz');
Insert Into Sistem values ('YandexDisk','Ýnternet Platformu','Yandex','Sýnýrsýz');
Insert Into Sistem values ('MediaFire','Ýnternet Platformu','MediaFire Software','Sýnýrsýz');
Insert Into Sistem values ('OneDrive','Ýnternet Platformu','Microsoft','Sýnýrsýz');
Insert Into Sistem values ('DropBox','Ýnternet Platformu ve Masaüstü Programý','Google','Sýnýrsýz');
Insert Into Sistem values ('Mega','Ýnternet Platformu','Mega','Sýnýrlý');
Insert Into Sistem values ('Dosya.tc','Ýnternet Platformu','Kiþisel','Sýnýrlý');
Insert Into Sistem values ('uTorrent','Masaüstü Programý','Microsoft','Sýnýrsýz');
Insert Into Sistem values ('BearShare','Masaüstü Programý','Microsoft','Sýnýrlý');
Insert Into Sistem values ('Vuze','Masaüstü Programý','Azureus Software','Sýnýrlý');
Insert Into Sistem values ('iMesh','Masaüstü Programý','imesh','Sýnýrsýz');
Insert Into Sistem values ('LimeWire','Masaüstü Programý','LimeWire LLC','Sýnýrsýz');

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
		select Kullanici_id from Kullanici where Kullanici_ad = 'Erol Can')); /* Adý Erol Can olan kullanýcýnýn kullandýðý sistem ve özellikleri. */

select * from Tur where Tur_id IN (
	select Tur_id from Dosya where Kullanici_id IN (
		select Kullanici_id from Kullanici where Ulke_id IN (
			select Ulke_id from Ulke where Ulke_ad = 'Türkiye'))); /* Türkiyede Kullanýlan dosya türleri. */

select Count(Dosya_no) AS 'Belçika dan Dosya' from Dosya where Kullanici_id IN  (
	select Kullanici_id from Kullanici where Ulke_id IN (
		select Ulke_id from Ulke where Ulke_ad = 'Belçika')); /* Belçikadan gönderilen dosyalarýn sayýsý. */

select * from Sistem where Sistem_id IN (
	select Sistem_id from Dosya where Kullanici_id IN (
		select Kullanici_id from Kullanici where Kullanici_meslek = 'Mühendis')); /* Mesleði mühendis olanlarýn kullandýðý sistemler. */

select * from Ulke where Ulke_id IN(
	select Ulke_id from Kullanici where Kullanici_id IN (
		select Kullanici_id from Dosya where Sistem_id IN (
			select Sistem_id from Sistem where Sistem_Yazilim_Sirketi = 'Google'))); /* Google yazýlým þirketinin kullanýldýðý ülkeler. */

select * from Sistem where Sistem_id IN (
	select Sistem_id from Dosya where Kullanici_id IN (
		select Kullanici_id from Kullanici where Ulke_id IN (
			select Ulke_id from Ulke where Ulke_ad = 'Belçika' ))); /* Belçikada kullanýlan dosya sistemleri */

select Count(Dosya_no) As 'Google ile Yollanan' from Dosya where Sistem_id IN (
	select Sistem_id from Sistem where Sistem_Yazilim_Sirketi= 'Google'); /* Google yazýlým þirketinin ürettiði sistemler kullanarak paylaþýlan dosyalarýn sayýsý. */

select Count(Tur_id) AS 'Murat Tur Sayisi'  from Tur where Tur_id IN (
	select Tur_id from Dosya where Kullanici_id IN (
		select Kullanici_id from Kullanici where Kullanici_ad = 'Murat')); /* Adý Murat olan kullanýcýnýn kullandýðý tür sayýsý. */