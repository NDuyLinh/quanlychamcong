using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ValueObject;
using System.Data;
using MySql.Data.MySqlClient;
namespace DAL
{
    public class NhanVienDAL
    {
        DBConnect db = new DBConnect();

        public DataTable GetData()
        {
            return db.GetData("NhanVien_Select_All");
        }

        public DataTable GetDataByID(string ID)
        {
            MySqlParameter[] para =
            {
                new MySqlParameter("idnv",ID)
            };
            return db.GetData("NhanVien_Select_ByID", para);
        }

        public int Insert(NhanVien obj)
        {
            MySqlParameter[] para =
            {
                new MySqlParameter("idnv",obj.MaNhanVien),
                new MySqlParameter("codepb",obj.MaPB),
                new MySqlParameter("codecv",obj.MaCV),
                new MySqlParameter("hsl",obj.HeSoLuong),
                new MySqlParameter("ten",obj.TenNV),
                new MySqlParameter("gt",obj.GioiTinh),
                new MySqlParameter("ns",obj.NgaySinh),
                new MySqlParameter("cmnd",obj.SoCM),
                new MySqlParameter("sdt",obj.DienThoai),
                new MySqlParameter("ad",obj.DiaChi),
                new MySqlParameter("mail",obj.Email),
                new MySqlParameter("nvl",obj.NgayVaoLam)
            };
            return db.ExecuteSQL("NhanVien_Insert", para);
        }

        //public void Insert(NhanVien obj)
        //{
        //    db.Insert("INSERT INTO `nhanvien` (`MaNhanVien`, `MaPB`, `MaCV`, `HeSoLuong`, `TenNV`, `GioiTinh`, `NgaySinh`, `NgayVaoLam`, `SoCM`, `DienThoai`, `DiaChi`, `Email`) VALUES('"+obj.MaNhanVien+"', '"+obj.MaPB+"', '"+obj.MaCV+"', '"+obj.HeSoLuong+"', '"+obj.TenNV+"', '"+obj.GioiTinh+"', '"+obj.NgaySinh+"', '"+obj.NgayVaoLam+"', '"+obj.SoCM+"', '"+obj.DienThoai+"', '"+obj.DiaChi+"', '"+obj.DiaChi+"')");
        //}




        public void Update(NhanVien obj)
        {
            db.Update("UPDATE `nhanvien` SET `MaPB` = '" + obj.MaPB + "', `MaCV` = '" + obj.MaCV + "', `HeSoLuong` = '" + obj.HeSoLuong + "', `TenNV` = '" + obj.TenNV + "', `GioiTinh` = '" + obj.GioiTinh + "', `NgaySinh` = '" + obj.NgaySinh + "',`NgayVaoLam` = '" + obj.NgayVaoLam + "',`SoCM` = '" + obj.SoCM + "',`SoCM` = '" + obj.SoCM + "',`DienThoai` = '" + obj.DienThoai + "',`DiaChi` = '" + obj.DiaChi + "',`Email` = '" + obj.Email + "' WHERE `nhanvien`.`MaNhanVien` = '" + obj.MaNhanVien + "'");
        }
        //public int Update(NhanVien obj)
        //{
        //    MySqlParameter[] para =
        //    {
        //        new MySqlParameter("idnv",obj.MaNhanVien),
        //        new MySqlParameter("codepb",obj.MaPB),
        //        new MySqlParameter("codecv",obj.MaCV),
        //        new MySqlParameter("hsl",obj.HeSoLuong),
        //        new MySqlParameter("ten",obj.TenNV),
        //        new MySqlParameter("gt",obj.GioiTinh),
        //        new MySqlParameter("ns",obj.NgaySinh),
        //        new MySqlParameter("cmnd",obj.SoCM),
        //        new MySqlParameter("sdt",obj.DienThoai),
        //        new MySqlParameter("ad",obj.DiaChi),
        //        new MySqlParameter("mail",obj.Email),
        //        new MySqlParameter("nvl",obj.NgayVaoLam)
        //    };
        //    return db.ExecuteSQL("NhanVien_Update", para);
        //}

        public int Delete(string ID)
        {
            MySqlParameter[] para =
            {
                new MySqlParameter("idnv",ID)
            };
            return db.ExecuteSQL("NhanVien_Delete", para);
        }

        public DataTable GetDatapb()
        {
            return db.GetData("SELECT * FROM `phongban`");
        }

        public DataTable GetDataCV()
        {
            return db.GetData("SELECT * FROM `chucvu`");
        }

        public DataTable GetDataHSL()
        {
            return db.GetData("Select * from luong");
        }

        
    }
}
