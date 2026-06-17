-- ============================================
-- YapıKent İnşaat — Kurulum SQL
-- Kullanım: phpMyAdmin > insaatv1 DB > Import
-- ============================================
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

CREATE DATABASE IF NOT EXISTS `insaatv1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `insaatv1`;

-- ============ AYARLAR ============
DROP TABLE IF EXISTS `ayarlar`;
CREATE TABLE `ayarlar` (
  `anahtar` VARCHAR(80) NOT NULL PRIMARY KEY,
  `deger` TEXT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `ayarlar` (`anahtar`,`deger`) VALUES
('site_adi','YapıKent İnşaat'),
('site_baslik','YapıKent İnşaat — Güvenilir İnşaat & Mühendislik Çözümleri'),
('site_aciklama','25 yıllık tecrübe ile konut, ticari ve endüstriyel inşaat projelerinde çözüm ortağınız.'),
('telefon','+90 212 555 00 00'),
('telefon2','+90 532 555 00 00'),
('mail','info@yapikentinsaat.com'),
('adres','Atatürk Cad. No:142, Şişli / İstanbul'),
('calisma_saati','Pzt - Cmt: 08:30 - 18:30'),
('hakkimizda_kisa','YapıKent İnşaat olarak 1999 yılından bu yana konut, ofis, AVM, fabrika ve altyapı projelerinde sektörün öncü firmalarından biri olduk.'),
('hakkimizda_uzun','YapıKent İnşaat, 1999 yılında İstanbul''da küçük bir mühendislik ofisi olarak yola çıktı. Bugün 120''den fazla çalışanı, 248 tamamlanmış projesi ve yüzlerce mutlu müşterisiyle Türkiye''nin önde gelen inşaat firmalarından biri haline geldi.'),
('misyon','Yenilikçi mühendislik çözümleri ve kaliteli işçilikle güvenli, fonksiyonel ve estetik yapılar üretmek; müşteri memnuniyetini her şeyin önünde tutmak.'),
('vizyon','Türkiye''nin en güvenilir ve tercih edilen inşaat firması olmak; sürdürülebilir yapı teknolojilerinde sektöre öncülük etmek.'),
('yil','25'),
('proje_sayi','248'),
('musteri_sayi','1850'),
('personel_sayi','120'),
('facebook','#'),('instagram','#'),('twitter','#'),('linkedin','#'),('youtube','#');

-- ============ HİZMETLER ============
DROP TABLE IF EXISTS `hizmetler`;
CREATE TABLE `hizmetler` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `baslik` VARCHAR(150) NOT NULL,
  `ozet` TEXT,
  `icerik` LONGTEXT,
  `ikon` VARCHAR(60) DEFAULT 'bi-building',
  `sira` INT DEFAULT 0,
  `durum` TINYINT DEFAULT 1,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `hizmetler` (`baslik`,`ozet`,`ikon`,`sira`) VALUES
('Konut İnşaatı','Modern mimari, depreme dayanıklı yapı ve kaliteli işçilikle hayalinizdeki konutu inşa ediyoruz.','bi-building',1),
('Ticari Yapılar','Ofis, AVM ve iş merkezi projelerinde fonksiyonel ve estetik tasarımlar sunuyoruz.','bi-shop-window',2),
('Endüstriyel Tesisler','Fabrika, depo ve lojistik tesislerinde anahtar teslim çelik konstrüksiyon çözümleri.','bi-bricks',3),
('Tadilat & Renovasyon','Mevcut yapılarınızı modernize ediyor, dekorasyon ve restorasyon hizmeti veriyoruz.','bi-house-gear',4),
('Mimari Proje','Konsept tasarımdan uygulama projelerine, 3D modellemeden iç mimariye tüm hizmetler.','bi-rulers',5),
('Altyapı & Yol','Yol, köprü, kanalizasyon ve su şebekesi projelerinde uzman çözümler.','bi-cone-striped',6),
('Proje Yönetimi','Maliyet kontrolü, planlama ve denetim hizmetleriyle projenizin başarısı garantide.','bi-tools',7),
('Mekanik Tesisat','Sıhhi tesisat, ısıtma, soğutma ve havalandırma projeleri ve uygulamaları.','bi-droplet-half',8),
('Elektrik Tesisatı','Güçlü ve zayıf akım projeleri, akıllı bina sistemleri ve enerji çözümleri.','bi-lightning-charge',9);

-- ============ PROJELER ============
DROP TABLE IF EXISTS `projeler`;
CREATE TABLE `projeler` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `baslik` VARCHAR(150) NOT NULL,
  `kategori` VARCHAR(60),
  `gorsel` VARCHAR(255),
  `aciklama` TEXT,
  `tarih` VARCHAR(40),
  `sira` INT DEFAULT 0,
  `durum` TINYINT DEFAULT 1,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `projeler` (`baslik`,`kategori`,`gorsel`,`aciklama`,`tarih`,`sira`) VALUES
('Bahçelievler Rezidans','Konut','https://images.unsplash.com/photo-1545324418-cc1a3fa10c00?w=800&q=80','24 katlı modern rezidans projesi','2024',1),
('Levent İş Merkezi','Ticari','https://images.unsplash.com/photo-1486325212027-8081e485255e?w=800&q=80','A+ ofis kompleksi','2023',2),
('Çerkezköy Lojistik Üs','Endüstriyel','https://images.unsplash.com/photo-1448630360428-65456885c650?w=800&q=80','45.000 m² çelik konstrüksiyon depo','2024',3),
('Park Vadi AVM','Ticari','https://images.unsplash.com/photo-1503387837-b154d5074bd2?w=800&q=80','120 mağazalı alışveriş merkezi','2022',4),
('Yeşilköy Villaları','Konut','https://images.unsplash.com/photo-1577415124269-fc1140a69e91?w=800&q=80','12 lüks villa kompleksi','2025',5),
('Bodrum Marin Otel','Otel','https://images.unsplash.com/photo-1515263487990-61b07816b324?w=800&q=80','5 yıldızlı butik otel','2023',6),
('Gebze Üretim Tesisi','Endüstriyel','https://images.unsplash.com/photo-1565793979206-6d57f4f4cdaa?w=800&q=80','Otomotiv yan sanayi fabrikası','2024',7),
('Çamlıca Sitesi','Konut','https://images.unsplash.com/photo-1512917774080-9991f1c4c750?w=800&q=80','8 bloklu site projesi','2022',8),
('Maslak Plaza','Ticari','https://images.unsplash.com/photo-1497366216548-37526070297c?w=800&q=80','35 katlı ofis kulesi','2025',9);

-- ============ BLOG ============
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `baslik` VARCHAR(200) NOT NULL,
  `slug` VARCHAR(200),
  `kategori` VARCHAR(60),
  `ozet` TEXT,
  `icerik` LONGTEXT,
  `gorsel` VARCHAR(255),
  `tarih` DATE,
  `durum` TINYINT DEFAULT 1,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `blog` (`baslik`,`slug`,`kategori`,`ozet`,`icerik`,`gorsel`,`tarih`) VALUES
('2026''nın Modern Konut Trendleri','modern-konut-trendleri-2026','Mimari','Açık planlı yaşam alanları, akıllı ev sistemleri ve doğal malzemeler bu yılın öne çıkan trendleri arasında.','Lorem ipsum dolor sit amet...','https://images.unsplash.com/photo-1503387762-592deb58ef4e?w=800&q=80','2026-04-02'),
('Depreme Dayanıklı Yapı Tasarımı','depreme-dayanikli-yapi','Mühendislik','Türkiye gibi deprem kuşağında yer alan ülkelerde sismik izolatörler hayat kurtarıyor.','Detaylı içerik...','https://images.unsplash.com/photo-1504917595217-d4dc5ebe6122?w=800&q=80','2026-03-18'),
('Yeşil Bina Sertifikası Nedir?','yesil-bina-sertifikasi','Sürdürülebilirlik','LEED ve BREEAM sertifikaları, çevre dostu binaların uluslararası standartlarını belirliyor.','Detaylı içerik...','https://images.unsplash.com/photo-1416331108676-a22ccb276e35?w=800&q=80','2026-03-05'),
('Çelik Konstrüksiyon Avantajları','celik-konstruksiyon-avantajlari','İnşaat','Hızlı montaj, hafiflik ve esneklik çelik yapıları endüstriyel projelerde vazgeçilmez kılıyor.','Detaylı içerik...','https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?w=800&q=80','2026-02-22'),
('İnşaat Projelerinde Maliyet Kontrolü','insaat-maliyet-kontrolu','Proje Yönetimi','Bütçe taşmasının önüne geçmek için doğru planlama ve düzenli denetim şart.','Detaylı içerik...','https://images.unsplash.com/photo-1517089152318-42ec560349c0?w=800&q=80','2026-02-10'),
('Akıllı Ev Sistemleri Rehberi','akilli-ev-sistemleri','Tasarım','Aydınlatmadan güvenliğe, akıllı ev teknolojileri konforu yeni bir seviyeye taşıyor.','Detaylı içerik...','https://images.unsplash.com/photo-1481026469463-66327c86e544?w=800&q=80','2026-01-28');

-- ============ REFERANSLAR ============
DROP TABLE IF EXISTS `referanslar`;
CREATE TABLE `referanslar` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `ad` VARCHAR(100) NOT NULL,
  `unvan` VARCHAR(120),
  `yorum` TEXT,
  `foto` VARCHAR(255),
  `yildiz` TINYINT DEFAULT 5,
  `durum` TINYINT DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `referanslar` (`ad`,`unvan`,`yorum`,`foto`,`yildiz`) VALUES
('Ahmet Yılmaz','İş İnsanı','Villa projemizi söz verdikleri tarihte, hatta önce teslim ettiler. İşçilik kalitesi gerçekten takdire şayan. Kesinlikle tavsiye ederim.','https://i.pravatar.cc/100?img=12',5),
('Selin Korkmaz','Park Vadi A.Ş.','AVM projemizde hem mimari hem mühendislik tarafında gösterdikleri profesyonellik için teşekkürler. Çok memnun kaldık.','https://i.pravatar.cc/100?img=32',5),
('Mehmet Demir','Demir Tekstil','Fabrikamızın çelik konstrüksiyon yapımında gösterdikleri iş disiplini örnek alınmalı. İletişimleri çok güçlü.','https://i.pravatar.cc/100?img=15',5);

-- ============ MESAJLAR ============
DROP TABLE IF EXISTS `mesajlar`;
CREATE TABLE `mesajlar` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `ad` VARCHAR(100),
  `mail` VARCHAR(150),
  `tel` VARCHAR(40),
  `konu` VARCHAR(200),
  `mesaj` TEXT,
  `okundu` TINYINT DEFAULT 0,
  `tarih` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============ ADMIN ============
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `kullanici` VARCHAR(60) NOT NULL UNIQUE,
  `sifre_hash` VARCHAR(255) NOT NULL,
  `ad_soyad` VARCHAR(120),
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Şifre: admin123  (password_hash bcrypt)
INSERT INTO `admin` (`kullanici`,`sifre_hash`,`ad_soyad`) VALUES
('admin','$2y$10$6gNrpOXRLof.Toy.Ugy.yu4DrKP23OcnJa7UBhKOH1iMxbtH8GK0.','Site Yöneticisi');

SET FOREIGN_KEY_CHECKS = 1;
