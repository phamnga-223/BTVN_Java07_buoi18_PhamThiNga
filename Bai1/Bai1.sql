-- Bai 1
CREATE DATABASE cybersoft_shop;

USE cybersoft_shop;

CREATE TABLE SanPham (
	maSP INT AUTO_INCREMENT,
	tenSP VARCHAR(255),
	gia INT,
	moTa VARCHAR(255),
	
	PRIMARY KEY (maSP)
);


CREATE TABLE HoaDon (
	maHoaDon INT AUTO_INCREMENT,
	ngayMua TIMESTAMP,
	
	PRIMARY KEY (maHoaDon)
);

CREATE TABLE HoaDon_SanPham (
	maHoaDon INT,
	maSP INT,
	soLuong INT,
	giaBan INT
);

ALTER TABLE HoaDon_SanPham ADD CONSTRAINT FK_maHoaDon_HDSP
FOREIGN KEY (maHoaDon) REFERENCES HoaDon(maHoaDon);
ALTER TABLE HoaDon_SanPham ADD CONSTRAINT FK_maSP_HDSP
FOREIGN KEY (maSP) REFERENCES SanPham(maSP);

CREATE TABLE LoaiSanPham (
	maLoaiSP INT AUTO_INCREMENT,
	tenLoaiSP VARCHAR(255),
	
	PRIMARY KEY (maLoaiSP)
);

CREATE TABLE KhachHang (
	maKH INT AUTO_INCREMENT,
	diaChi VARCHAR(255),
	email VARCHAR(100),
	ho VARCHAR(100),
	ten VARCHAR(200),
	soDT VARCHAR(20),
	
	PRIMARY KEY (maKH)
);
