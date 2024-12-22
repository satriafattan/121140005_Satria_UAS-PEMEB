Nama: Satria Fattan Granada
 Nim: 121140005



### 1. Client-side Programming
#### a. Form Input
- Form dengan empat elemen input:
  1. Input teks untuk nama.
  2. Input email untuk alamat email.
  3. Input radio untuk gender.
  4. Checkbox untuk persetujuan syarat dan ketentuan.

#### b. Tabel Data
- Data yang dikirim dari form ditampilkan kembali dalam tabel HTML menggunakan JavaScript.

#### c. Validasi dan Event Handling
- **Validasi Klien**: Memastikan semua input terisi dengan format yang benar.
- **Event Handling**:
  - Validasi form sebelum pengiriman.
  - Pemrosesan data dan pembaruan tabel secara dinamis.

### 2. Server-side Programming
#### a. Pemrosesan Form dengan POST
- Data form dikirim menggunakan metode POST ke server.

#### b. Validasi Server-side
- Validasi dilakukan pada sisi server untuk memastikan data yang diterima valid (contoh: format email).

#### c. Penyimpanan ke Database
- Data disimpan dalam tabel database `submissions`.
- Informasi tambahan yang disimpan:
  - **Browser** pengguna.
  - **Alamat IP** pengguna.

#### d. PHP Berbasis OOP
- Objek PHP dengan dua metode:
  1. Menyimpan data ke database.
  2. Membaca data dari database.

### 3. Database Management
#### a. Pembuatan Tabel
- Tabel `submissions` dengan kolom:
  - `id`: ID unik.
  - `name`: Nama pengguna.
  - `email`: Email pengguna.
  - `gender`: Gender.
  - `date_submitted`: Waktu pengiriman.
  - `browser`: Jenis browser.
  - `ip_address`: Alamat IP.

#### b. Koneksi Database
- Menggunakan `mysqli` atau `PDO` untuk koneksi database.

#### c. Manipulasi Data
- Operasi CRUD untuk tabel `submissions`.

### 4. State Management
#### a. Session
- `session_start()` digunakan untuk menyimpan informasi pengguna (contoh: nama pengguna yang login).

#### b. Cookie dan Browser Storage
- **Cookie**: Untuk menyimpan preferensi pengguna.
- **Browser Storage**: Menggunakan `localStorage` atau `sessionStorage` untuk menyimpan data lokal.

### 5. Hosting
#### a. Langkah Hosting
1. Pilih layanan hosting seperti **InfinityFree**.
2. Buat akun di [InfinityFree](https://www.infinityfree.net/).
3. Buat domain atau gunakan subdomain gratis yang disediakan.
4. Upload file aplikasi melalui File Manager di cPanel atau gunakan FTP seperti FileZilla.

#### b. Pemilihan Penyedia Hosting
- **InfinityFree**: Layanan hosting gratis dengan dukungan PHP, MySQL, dan bandwidth tidak terbatas.
- Cocok untuk proyek kecil hingga menengah.

#### c. Keamanan
- Gunakan HTTPS (InfinityFree menyediakan sertifikat SSL gratis).
- Validasi input untuk mencegah serangan SQL Injection atau XSS.
- Batasi akses file sensitif.

#### d. Konfigurasi Server
- Atur izin file dengan benar (contoh: `755` untuk folder).
- Gunakan file `.htaccess` (untuk konfigurasi Apache) untuk pengaturan URL dan akses.


## Cara Menjalankan Proyek
1. Clone repositori ini.
2. Pastikan server web dan database Anda berjalan.
3. Import file SQL untuk membuat tabel database.
4. Jalankan aplikasi dengan membuka file HTML di browser atau melalui server lokal (XAMPP, WAMP, dsb).
5. Submit form untuk melihat data disimpan dan ditampilkan dalam tabel.