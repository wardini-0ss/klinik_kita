# Sistem Informasi Klinik Kita

Sistem ini dikembangkan sebagai proyek mandiri untuk mengelola layanan klinik, termasuk pendaftaran pasien, jadwal dokter, dan manajemen layanan kesehatan. Aplikasi ini dibangun secara penuh oleh saya, mulai dari perancangan sistem hingga pengembangan website.



## Peran Saya (System Analyst & Developer)

Sebagai pengembang tunggal proyek ini, saya bertanggung jawab untuk:
- Melakukan analisis kebutuhan pengguna dan fungsionalitas sistem
- Mendesain ERD dan struktur database
- Membuat flowchart proses layanan klinik
- Mengembangkan antarmuka web menggunakan HTML, CSS, dan PHP
- Menghubungkan sistem dengan database MySQL
- Menguji sistem secara menyeluruh
- Menyesuaikan hak akses berdasarkan peran (multi-role user)



## Role Pengguna (Multi-Role User)

Sistem ini dirancang dengan autentikasi dan hak akses berdasarkan peran pengguna:

- **Pasien**
  - Melakukan pendaftaran dan login
  - Melihat jadwal dokter
  - Mendaftar layanan klinik
  - Melihat riwayat pemeriksaan

- **Dokter**
  - Login dan melihat jadwal praktik
  - Melihat daftar pasien
  - Mengisi catatan medis dan hasil pemeriksaan

- **Admin Klinik**
  - Kelola data dokter, pasien, dan layanan
  - Atur jadwal praktik
  - Monitoring seluruh aktivitas sistem

- **Resepsionis / Petugas Pendaftaran**
  - Input data pendaftaran pasien langsung di klinik
  - Cek dan konfirmasi layanan

Setiap peran memiliki antarmuka dan fitur yang sesuai untuk menunjang fungsinya.



## Fitur Sistem

- Login multi-role (admin, dokter, pasien, resepsionis)
- Manajemen data pasien dan dokter
- Penjadwalan praktik
- Registrasi layanan dan pemeriksaan
- Catatan medis oleh dokter
- Riwayat layanan pasien
- Dashboard admin dan grafik layanan
- Validasi login dan keamanan dasar



## Teknologi yang Digunakan

- PHP Native
- MySQL Database
- HTML, CSS, JavaScript
- Bootstrap



## Tampilan Sistem

> Berikut ini adalah beberapa tampilan antarmuka pengguna berdasarkan peran:

### Halaman Login
<img width="1014" height="697" alt="Login" src="https://github.com/user-attachments/assets/48149b29-748d-49c7-a501-e6d14c428ba2" />

### Dashboard Pasien
<img width="1833" height="742" alt="Dashboard_pasien" src="https://github.com/user-attachments/assets/78ceeaca-ce1a-42f8-bc1b-4dd3a18b3f59" />

### Dashboard Dokter
<img width="1127" height="820" alt="Dashboard_dokter" src="https://github.com/user-attachments/assets/6309246b-c538-401b-b8f4-17d9cb5b2c48" />

### Dashboard Resepsionis
<img width="1677" height="827" alt="Dashboard_resepsionis" src="https://github.com/user-attachments/assets/0e7f66b7-3001-4aed-8cfe-a154d506c2e6" />

###  Dashboard Admin
<img width="1055" height="624" alt="Dashboard_admin" src="https://github.com/user-attachments/assets/9855beb4-7bb6-4bfd-8bb8-a5192c0888f0" />

---

## Struktur Folder

- `/admin` – Fitur untuk admin klinik
- `/dokter` – Tampilan untuk dokter
- `/pasien` – Tampilan untuk pasien
- `/resepsionis` – Tampilan untuk frontdesk/pendaftaran
- `/includes` – File koneksi dan konfigurasi
- `index.php` – Halaman utama
- `login.php` – Halaman login multi-role

---

## Tentang Saya

**Miftah Wardini**  
Mahasiswa Politeknik Negeri Medan – Manajemen Informatika  
Email: miftahzen25@gmail.com  


> Proyek ini sepenuhnya dikembangkan sebagai proyek mandiri dan menjadi bukti nyata kemampuan saya dalam menganalisis kebutuhan pengguna, merancang sistem, dan mengembangkan aplikasi informasi berbasis web dengan struktur multi-role yang kompleks dan dinamis.
