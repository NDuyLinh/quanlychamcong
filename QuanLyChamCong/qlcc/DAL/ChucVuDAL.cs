﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using ValueObject;
using MySql.Data.MySqlClient;

namespace DAL
{
    public class ChucVuDAL
    {
        DBConnect db = new DBConnect();

        public DataTable GetData()
        {
            return db.GetData("chucvu_Select_All",null);
        }

        public int Insert(ChucVu obj)
        {
            MySqlParameter[] para =
            {
                 new MySqlParameter("idmacv",obj.MaCV),
                 new MySqlParameter("tencv",obj.TenCV)
            };
            return db.ExecuteSQL("chucvu_Insert", para);
        }

        public int Update(ChucVu obj)
        {
            MySqlParameter[] para =
            {
                new MySqlParameter("idCV",obj.MaCV),
                new MySqlParameter("TenCV",obj.TenCV)
            };
            return db.ExecuteSQL("chucvu_Update", para);
        }

        public int Delete(string id)
        {
            MySqlParameter[] para =
            {
                new MySqlParameter("idCV",id),
            };
            return db.ExecuteSQL("chucvu_Delete", para);
        }
    }
}
