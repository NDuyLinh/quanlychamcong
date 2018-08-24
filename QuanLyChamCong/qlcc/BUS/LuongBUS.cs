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
    public class LuongBUS
    {
        LuongDAL dal = new LuongDAL();

        public DataTable GetData()
        {
            return dal.GetData();
        }

        public DataTable GetDaTaByID(string id)
        {
            return dal.GetDataByID(id);
        }

        public int Insert(Luong obj)
        {
            return dal.Insert(obj);
        }

        public int Update(Luong obj)
        {
            return dal.Update(obj);
        }
        
        public int Delete(string id)
        {
            return dal.Delete(id);
        }
    }
}
