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
    public class PhongBanDAL
    {
        DBConnect db = new DBConnect();

        public DataTable GetData()
        {
            return db.GetData("phongban_Select_All", null);
        }

        public DataTable GetDataByID(string ID)
        {
            MySqlParameter[] para =
            {
                new MySqlParameter("idPB",ID)
            };
            return db.GetData("phongban_Select_ByID", para);
        }

        public int Insert(PhongBan obj)
        {
            MySqlParameter[] para =
            {
                new MySqlParameter("idPB",obj.IDPhongBan),
                new MySqlParameter("tenPB",obj.namePhongBan)
            };
            return db.ExecuteSQL("phongban_Insert", para);
        }

        public void Update(PhongBan obj)
        {
           
             db.Update("update phongban set TenPB = '" + obj.namePhongBan + "' Where MaPB = '" + obj.IDPhongBan + "'");
            
        }

        public int Delete(String ID)
        {
            MySqlParameter[] para =
            {
                new MySqlParameter("idPB",ID)
            };
            return db.ExecuteSQL("phongban_Delete", para);
        }
    }
}
