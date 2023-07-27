Lapisan Presentasi (Presentation Tier):

Web Server: Nginx
OS: Ubuntu 20.04 LTS (Linux)
Alasan:
Nginx dipilih karena kinerjanya yang cepat, efisien dalam menangani banyak koneksi, dan cocok untuk tugas server web dan reverse proxy.
Ubuntu 20.04 LTS adalah versi Long Term Support (LTS) yang menawarkan dukungan jangka panjang dan update keamanan reguler.
Lapisan Aplikasi (Application Tier):

Container Orchestration: Kubernetes
OS (Node): Ubuntu 20.04 LTS (Linux)
Alasan:
Kubernetes digunakan untuk mengelola dan menyediakan otomatisasi skala horizontal untuk aplikasi, sehingga dapat mengatasi lalu lintas yang tinggi.
Menggunakan kontainer Docker dengan Ubuntu 20.04 sebagai sistem operasi node untuk aplikasi memberikan fleksibilitas dan konsistensi lingkungan.
Lapisan Data (Data Tier):

In-Memory Database: Redis
OS: Ubuntu 20.04 LTS (Linux)
Alasan:
Redis digunakan untuk menyimpan data sesi pengguna dan caching karena memiliki kinerja tinggi, mendukung operasi data yang cepat, dan dapat berfungsi sebagai data store dalam memori.
Ubuntu 20.04 LTS sebagai sistem operasi untuk Redis memastikan dukungan dan pembaruan jangka panjang.
Penyimpanan Data (Storage Tier):

Managed Database Service (contoh: PostgreSQL)
OS: Ubuntu 20.04 LTS (Linux)
Alasan:
DigitalOcean menyediakan layanan database yang dikelola, seperti PostgreSQL. Layanan ini menyediakan manajemen, skalabilitas, dan pemeliharaan otomatis untuk database, membebaskan tim dari tugas-tugas administratif yang rumit.
Ubuntu 20.04 LTS sebagai sistem operasi untuk basis data memastikan konsistensi dengan lingkungan lainnya.
