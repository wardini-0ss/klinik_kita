# Kliknik – Sistem Informasi Klinik Digital

Website manajemen layanan klinik berbasis **PHP & MySQL**, dengan fitur login multi-role (Admin, Dokter, Resepsionis, Pasien). Dibuat sebagai proyek pengembangan web terstruktur untuk digitalisasi sistem reservasi dan manajemen data pasien.

## Fitur Utama
- Autentikasi pengguna berdasarkan peran
- Manajemen data pasien, dokter, dan jadwal
- CRUD data untuk masing-masing peran
- Formulir pendaftaran dan login
- UI responsif dengan struktur folder modular

## Teknologi yang Digunakan
- **Back-end**: PHP Native
- **Database**: MySQL
- **Frontend**: HTML, CSS (Bootstrap)
- **Tools**: XAMPP, phpMyAdmin

## Struktur Folder
- `/admin` – Modul untuk admin klinik
- `/doctor` – Modul untuk dokter
- `/receptionist` – Modul untuk resepsionis
- `/patient` – Modul untuk pasien
- `/config` – File koneksi dan konfigurasi database
- `/includes` – File yang digunakan ulang (header/footer)

## Cara Menjalankan Proyek
1. Clone repository ini
2. Import file `klinik_db.sql` ke MySQL via phpMyAdmin
3. Letakkan folder ini di `htdocs` (jika pakai XAMPP)
4. Jalankan di browser melalui `localhost/kliknik`

## Kontributor
- Miftah Wardini – Back-end Developer

## Catatan
Proyek ini dikembangkan untuk keperluan pembelajaran dan studi kasus sistem informasi berbasis web. Tidak untuk produksi medis nyata.

