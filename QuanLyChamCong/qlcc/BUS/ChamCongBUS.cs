using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using ValueObject;
using System.Data;

namespace BUS
{
    public class ChamCongBUS
    {
        ChamCongDAL dal = new ChamCongDAL();

        public DataTable Getdata()
        {
            return dal.GetData();
        }

        public void Insert(ChamCong obj)
        {
            dal.Insert(obj);
        }
    }
}
