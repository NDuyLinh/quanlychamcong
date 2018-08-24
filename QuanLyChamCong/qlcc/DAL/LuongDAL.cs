using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ValueObject;
using MySql.Data.MySqlClient;
using System.Data;

namespace DAL
{
    public class LuongDAL
    {
        DBConnect db = new DBConnect();

        public DataTable GetData()
        {
            return db.GetData("Luong_Select_All", null);
        }

        public DataTable GetDataByID(string id)
        {
            MySqlParameter[] para =
            {
                new MySqlParameter("idHSL",id)
            };
            return db.GetData("Luong_Select_ByID",para);
        }

        public int Insert(Luong obj)
        {
            MySqlParameter[] para =
             {
                new MySqlParameter("idHSL",obj.HeSoLuong),
                new MySqlParameter("lcb",obj.LuongCB)
            };

            return db.ExecuteSQL("Luong_Insert",para);
        }

        public int Update(Luong obj)
        {
            MySqlParameter[] para =
            {
                new MySqlParameter("idHSL",obj.HeSoLuong),
                new MySqlParameter("lcb",obj.LuongCB)
            };
            return db.ExecuteSQL("Luong_Update",para);
        }

        public int Delete(string id)
        {
            MySqlParameter[] para =
            {
                new MySqlParameter("idHSL",id)
            };
            return db.ExecuteSQL("Luong_Delete", para);
        }
    }
}
