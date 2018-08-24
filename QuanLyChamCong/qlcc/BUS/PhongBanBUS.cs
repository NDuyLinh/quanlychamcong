using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ValueObject;
using DAL;
using System.Data;

namespace BUS
{
    public class PhongBanBUS
    {
        PhongBanDAL dal = new PhongBanDAL();
        
        public DataTable GetData()
        {
            return dal.GetData();
        }

        public DataTable GetDataByID(string id)
        {
            return dal.GetDataByID(id);
        }

        public int Insert(PhongBan obj)
        {
            return dal.Insert(obj);
        }

        public void Update(PhongBan obj)
        {
            dal.Update(obj);
        }

        public int Delete(string ID)
        {
            return dal.Delete(ID);
        }
    }
}
