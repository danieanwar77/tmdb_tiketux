# TMDB Explorer App

TMDB Explorer App adalah aplikasi mobile yang dikembangkan menggunakan Flutter untuk platform Android dan iOS. Aplikasi ini memanfaatkan API dari [The Movie Database (TMDB)](https://www.themoviedb.org/) untuk menyajikan informasi terkini mengenai film dan serial TV.

## Fitur Utama

### 1. **Login**
- Menggunakan login dummy yang diimplementasikan melalui function di controller.
- Tidak ada integrasi autentikasi ke server, hanya validasi sederhana di sisi aplikasi.

### 2. **Home**
- Menampilkan beragam kategori konten yang diambil dari 7 jenis API TMDB:
    - **Trending All**: Konten populer saat ini (film dan serial TV).
    - **TV Now Airing**: Serial TV yang sedang tayang.
    - **Movie Now Playing**: Film yang sedang tayang di bioskop.
    - **TV Top Rated**: Serial TV dengan rating tertinggi.
    - **Movie Top Rated**: Film dengan rating tertinggi.
    - **TV Genres**: Daftar genre untuk serial TV.
    - **Movie Genres**: Daftar genre untuk film.

### 3. **Detail**
- Halaman detail untuk setiap film atau serial TV, menggunakan 6 jenis API TMDB:
    - **Detail TV**: Informasi lengkap mengenai serial TV.
    - **Credits TV**: Informasi pemain dan kru dari serial TV.
    - **Reviews TV**: Ulasan pengguna untuk serial TV.
    - **Detail Movie**: Informasi lengkap mengenai film.
    - **Credits Movie**: Informasi pemain dan kru dari film.
    - **Review Movie**: Ulasan pengguna untuk film.

### 4. **Trending Hari Ini**
- Menampilkan konten tren harian menggunakan 3 jenis API TMDB:
    - **Trending All**: Konten populer (film dan serial TV).
    - **TV Popular**: Serial TV paling populer.
    - **Movie Popular**: Film paling populer.

### 5. **Archive**
- Menampilkan konten populer untuk referensi di masa mendatang, menggunakan 3 jenis API TMDB:
    - **Trending All**: Konten populer (film dan serial TV).
    - **TV Popular**: Serial TV paling populer.
    - **Movie Popular**: Film paling populer.

### 6. **Profile**
- Halaman profil pengguna yang menampilkan konten tren terkini, menggunakan 1 jenis API TMDB:
    - **Trending All**: Konten populer (film dan serial TV).

## Teknologi yang Digunakan
- **Flutter**: Framework untuk pengembangan aplikasi lintas platform.
- **Dart**: Bahasa pemrograman utama.
- **TMDB API**: Sumber data untuk informasi film dan serial TV.

## Cara Menjalankan Aplikasi
1. Clone repositori ini ke komputer Anda.
   ```bash
   git clone <URL_REPOSITORI>