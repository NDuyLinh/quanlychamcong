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
    public class ChucVuBUS
    {
        ChucVuDAL dal = new ChucVuDAL();

        public DataTable GetData()
        {
            return dal.GetData();
        }

        public int Insert(ChucVu obj)
        {
            return dal.Insert(obj);
        }

        public void Update(ChucVu obj)
        {
            dal.Update(obj);
        }

        public int Delete(string id)
        {
            return dal.Delete(id);
        }
    }

}
        
