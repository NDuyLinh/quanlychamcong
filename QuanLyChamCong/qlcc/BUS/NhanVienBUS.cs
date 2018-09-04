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
    public class NhanVienBUS
    {
        NhanVienDAL dal = new NhanVienDAL();
       
        
        public DataTable GetData()
        {
            return dal.GetData();
        }

        public DataTable GetDataByID(string ID)
        {
            return dal.GetDataByID(ID);
        }

        //public void Insert(NhanVien obj)
        //{
        //    dal.Insert(obj);
        //}
        
          public int Insert(NhanVien obj)
        {
            return dal.Insert(obj);
        }


        public void Update(NhanVien obj)
        {
            dal.Update(obj);
        }

        //public int Update(NhanVien obj)
        //{
        //    return dal.Update(obj);
        //}

        public int Delete(string ID)
        {
            return dal.Delete(ID);
        }

        public DataTable GetDataPB()
        {
            return dal.GetDatapb();
        }

        public DataTable GetDataCV()
        {
            return dal.GetDataCV();
        }

        public DataTable GetDataHSL()
        {
            return dal.GetDataHSL();
        }
       
    }
}
