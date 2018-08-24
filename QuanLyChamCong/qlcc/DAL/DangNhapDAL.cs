using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;
using ValueObject;

namespace DAL
{
    public class DangNhapDAL
    {
        DBConnect db = new DBConnect();
        
        public DataTable GetData(TaiKhoan obj)
        {   
            return db.GetData("SELECT * FROM taikhoan WHERE taikhoan.TenDangNhap = '"+obj.TenDangNhap+"' and taikhoan.MatKhau = '"+obj.MatKhau+"'");
        }
            
    }
        
}

