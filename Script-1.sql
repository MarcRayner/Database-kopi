CREATE DATABASE kopi_db;

USE kopi_db;

CREATE TABLE 	Kopi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    harga DECIMAL(10, 2) NOT NULL
);

CREATE TABLE pelanggan (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telepon VARCHAR(15)
);

CREATE TABLE pesanan (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pelanggan_id INT,
    tanggal_pesanan DATE NOT NULL,
    total_harga DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (pelanggan_id) REFERENCES pelanggan(id)
);

CREATE TABLE stok (
    id INT AUTO_INCREMENT PRIMARY KEY,
    kopi_id INT,
    jumlah INT NOT NULL,
    FOREIGN KEY (kopi_id) REFERENCES kopi(id)
);

DROP DATABASE IF EXISTS kopi_db;

-- Buat database 'kopi_db' baru




USE kopi_db;


DROP TABLE IF EXISTS kopi;


CREATE TABLE kopi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    harga DECIMAL(10, 2) NOT NULL,
    jumlah INT NOT NULL
);


INSERT INTO kopi (nama, harga, jumlah) VALUES
('Kopi Arabika', 50000, 100),
('Kopi Robusta', 45000, 200),
('Kopi Liberika', 60000, 150),
('Kopi Excelsa', 55000, 50);

select * from kopi 

SELECT * FROM kopi WHERE harga ;



