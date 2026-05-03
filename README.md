# Secure User Authentication & Activity Logging System

## Project Overview
This repository contains a robust database-level logic for user authentication developed in **T-SQL**. It doesn't just verify credentials; it creates a professional audit trail by logging every attempt (successful or failed) with IP addresses and specific status messages.

##  Key Features
*Multi-Scenario Logic: Handles "Success," "Wrong Password," and "User Not Found" scenarios using efficient `IF-ELSE` blocks.
*Activity Tracking (Logging): Automatically records every login attempt in `tLoglar` for security auditing and behavioral analysis.
*Variable-Based Performance: Uses SQL variables (`DECLARE`) to minimize database hits and optimize execution speed.
*Data Integrity: Ensures users receive accurate feedback while maintaining back-end security protocols.

##  Technical Stack
*Database: MS SQL Server (T-SQL)
*Core Concepts: Stored Procedures, Conditional Logic, Variable Mapping, Auditing.

##  Business & MIS Perspective
In an enterprise environment, tracking user access is critical for security compliance (such as KVKK or GDPR). This project showcases a **"Validation at Source"** approach, ensuring business rules are enforced directly at the database level, which is a key skill for any Management Information Systems (MIS) student.

##  How to Run
1.  Execute the table scripts in the `.sql` file to set up the environment.
2.  Run the `pGirisSorgulama` stored procedure with test parameters:
```sql
EXEC pGirisSorgulama 'user@example.com', 'password123', '192.168.1.1'

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Güvenli Kullanıcı Kimlik Doğrulama ve Aktivite Günlüğü Sistemi

##  Proje Hakkında
Bu proje, MS SQL Server üzerinde Stored Procedure mimarisi kullanılarak geliştirilmiş, veritabanı seviyesinde bir kimlik doğrulama sistemidir. Sistem sadece giriş bilgilerini kontrol etmekle kalmaz; tüm girişimleri IP adresi ve özel durum mesajlarıyla kaydederek profesyonel bir **denetim izi (audit trail)** oluşturur.

##  Öne Çıkan Özellikler
*Çoklu Senaryo Yönetimi: `IF-ELSE` blokları ile "Başarılı Giriş", "Yanlış Şifre" ve "Kullanıcı Bulunamadı" durumlarını analiz eder.
*Aktivite Takibi (Loglama): Güvenlik denetimi için her giriş denemesini `tLoglar` tablosuna otomatik olarak kaydeder.
*Performans Odaklı Tasarım: SQL değişkenleri kullanarak veritabanı üzerindeki yükü minimize eder ve işlem hızını artırır.
*Güvenlik ve Veri Bütünlüğü: İş kurallarını doğrudan veritabanı seviyesinde (**Validation at Source**) doğrular.

## 🛠️ Teknik Detaylar
*Veritabanı: MS SQL Server (T-SQL)
*Kullanılan Yapılar: Stored Procedures, Koşullu Mantık, Değişken Tanımlama, Veri Denetimi (Auditing).

## 📊 İş ve YBS Perspektifi
Bu sistem; kimin, ne zaman ve nereden giriş yapmaya çalıştığını kayıt altına alarak KVKK uyumluluğu ve siber güvenlik analizi için gerekli altyapıyı sunar. Teknik bir çözümün işletme güvenliğiyle nasıl birleştiğinin somut bir örneğidir.

##  Nasıl Çalıştırılır?
1. `.sql` dosyasındaki tablo oluşturma komutlarını çalıştırın.
2. `pGirisSorgulama` prosedürünü test parametreleri ile çağırın:

```sql
EXEC pGirisSorgulama 'mail@adres.com', 'sifre123', '192.168.1.1'
