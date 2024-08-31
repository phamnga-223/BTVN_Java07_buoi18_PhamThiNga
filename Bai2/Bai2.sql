-- Bài 2
CREATE DATABASE db_QLBanSach;

USE db_QLBanSach;

CREATE TABLE KhachHang (
	maKH INT AUTO_INCREMENT,
	taiKhoan INT,
	matKhau VARCHAR(255),
	email VARCHAR(255),
	diaChi VARCHAR(255),
	dienThoai VARCHAR(20),
	gioiTinh VARCHAR(4),
	ngaySinh TIMESTAMP,
	hoTen VARCHAR(255),
	
	PRIMARY KEY (maKH)
);

CREATE TABLE DonHang (
	maDonHang INT AUTO_INCREMENT,
	daThanhToan VARCHAR(100),
	ngayGiao TIMESTAMP,
	ngayDat TIMESTAMP,
	tinhTrangGH VARCHAR(255),
	
	PRIMARY KEY (maDonHang)
);

CREATE TABLE TacGia (
	maTacGia INT AUTO_INCREMENT,
	tenTacGia VARCHAR(255),
	dienThoai VARCHAR(20),
	tieuSu TEXT,
	diaChi VARCHAR(255),
	
	PRIMARY KEY (maTacGia)
);

CREATE TABLE Sach (
	maSach INT AUTO_INCREMENT,
	tenSach VARCHAR(255),
	giaBan INT,
	moTa TEXT,
	anhBia VARCHAR(500),
	ngayCapNhat TIMESTAMP,
	soLuongTon INT,
	
	PRIMARY KEY (maSach)
);

CREATE TABLE NhaXuatBan (
	maNSX INT AUTO_INCREMENT,
	tenNSB VARCHAR(255),
	diaChi VARCHAR(255),
	dienThoai VARCHAR(20),
	
	PRIMARY KEY (maNSX)
);

CREATE TABLE ChuDe (
	maChuDe INT AUTO_INCREMENT,
	tenChuDe VARCHAR(255),
	
	PRIMARY KEY (maChuDe)
);

CREATE TABLE DonHang_Sach (
	maDonHang INT,
	maSach INT,
	soLuong INT
);

ALTER TABLE DonHang_Sach ADD CONSTRAINT FK_maDonHang_DHS
FOREIGN KEY (maDonHang) REFERENCES DonHang(maDonHang);
ALTER TABLE DonHang_Sach ADD CONSTRAINT FK_maSach_DHS
FOREIGN KEY (maSach) REFERENCES Sach(maSach);
