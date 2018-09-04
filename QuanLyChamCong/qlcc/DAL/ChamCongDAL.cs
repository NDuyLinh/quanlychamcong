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
    public class ChamCongDAL
    {
        DBConnect db = new DBConnect();

        public DataTable GetData()
        {
            return db.GetData("SELECT nhanvien.MaNhanVien,nhanvien.TenNV FROM nhanvien ");
        }

        public void Insert(ChamCong obj)
        {
            db.Insert("INSERT INTO `chamcong` (`MaNhanVien`, `Ngay`, `TinhTrang`) VALUES ('" + obj.MaNhanVien + "', '" + obj.Ngay + "', '" + obj.TinhTrang + "');");
        }
    }
}
