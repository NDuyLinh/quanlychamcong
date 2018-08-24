using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;
using ValueObject;

namespace BUS
{
    public class DangNhapBUS
    {
        DangNhapDAL dal = new DangNhapDAL();
        
        
        public bool check_taikhoan(TaiKhoan obj)
        {
            DataTable dt = dal.GetData(obj);
            if (dt.Rows.Count > 0)
                return true;
            return false;
        }
    }
}
