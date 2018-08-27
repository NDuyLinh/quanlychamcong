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
            return db.GetData("SELECT chamcong.MaNhanVien,nhanvien.TenNV,chamcong.TinhTrang FROM chamcong INNER JOIN nhanvien on chamcong.MaNhanVien = nhanvien.MaNhanVien");
        }
    }
}
