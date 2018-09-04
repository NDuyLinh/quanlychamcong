using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    public class DBConnect
    {
        private MySqlConnection conn;

        public DBConnect()
        {
            conn = new MySqlConnection("Server=localhost;Port=3306;DataBase=banggchamcong;User ID = root;password=;CharSet=utf8;sslmode=none;Convert Zero Datetime=True");
        }

        public DataTable GetData(string strSQL)
        {
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(strSQL, conn);
            conn.Open();
            da.Fill(dt);
            conn.Close();
            return dt;
        }

        public DataTable GetData(string proName, MySqlParameter[] para)
        {
            DataTable dt = new DataTable();
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = proName;
            cmd.CommandType = CommandType.StoredProcedure;
            if (para != null)
            {
                cmd.Parameters.AddRange(para);
            }
            cmd.Connection = conn;
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            conn.Open();
            da.Fill(dt);
            conn.Close();
            return dt;
        }

        public void Update(string sql)
        {
            MySqlCommand cmd = new MySqlCommand(sql,conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public void Insert(string sql)
        {
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
        }

        

        public int ExecuteSQL(string strSQL)
        {
            MySqlCommand cmd = new MySqlCommand(strSQL, conn);
            conn.Open();
            int row = cmd.ExecuteNonQuery();
            conn.Close();
            return row;
        }

        public int ExecuteSQL(string proName, MySqlParameter[] para)
        {
            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = proName;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Connection = conn;
            if (para != null)
                cmd.Parameters.AddRange(para);
            conn.Open();
            int row = cmd.ExecuteNonQuery();
            conn.Close();
            return row;

        }

        
    }
}
