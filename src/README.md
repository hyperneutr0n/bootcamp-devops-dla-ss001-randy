# Proyek Web Server Go

## Instalasi

1.  **Clone repository ini:**
    ```bash
    git clone [https://github.com/](https://github.com/)hyperneutr0n/bootcamp-devops-dla-ss001-randy.git
    cd bootcamp-devops-dla-ss001-randy/src
    ```

2.  **Buat file `.env`:**
    Buat sebuah file bernama `.env` di dalam direktori `src` dan tambahkan konten berikut untuk menentukan port:
    ```
    PORT=8080
    ```

3.  **Install dependensi:**
    ```bash
    go mod tidy
    ```

## Menjalankan Server

Untuk menjalankan server, gunakan perintah berikut: 
```bash
go run main.go