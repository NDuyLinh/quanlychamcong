using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Attendance
{
    public partial class DiemDanh : Form
    {
        MySqlConnection conn = new MySqlConnection("Server=localhost;Port=3306;DataBase=attendance;User ID = root;password=;CharSet=utf8;");
        int i;
        public DiemDanh()
        {
            InitializeComponent();
        }

        private void btn_out_Click(object sender, EventArgs e)
        {
            conn.Close();
            MySqlParameter[] pms = new MySqlParameter[2];
            pms[0] = new MySqlParameter("dateout", MySqlDbType.Datetime);
            pms[1] = new MySqlParameter("stc", MySqlDbType.Text);
            pms[1].Value = txtStaffCode.Text;
            MySqlCommand cmdd = new MySqlCommand("Login_out", conn);
            cmdd.CommandType = CommandType.StoredProcedure;
            cmdd.Parameters.AddRange(pms);
            conn.Open();
            if (cmdd.ExecuteNonQuery() == 1)
            {
                MessageBox.Show("Thành Công");

            }
            else
            {
                MessageBox.Show("Thất Bại");
            }

        }

        private void btn_in_Click(object sender, EventArgs e)
        {
            i = 0;
            conn.Open();
            MySqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM `tbl_staff` WHERE tbl_staff.sStaffCode = '"+txtStaffCode.Text+"'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            i = Convert.ToInt32(dt.Rows.Count.ToString());
            if (i == 0)
            {
                MessageBox.Show("Nhập sai Mã");
            }
            else
            {
                conn.Close();
                MySqlParameter[] pms = new MySqlParameter[4];
                pms[0] = new MySqlParameter("idtime",MySqlDbType.Int32);
                pms[1] = new MySqlParameter("idstaff", MySqlDbType.Int32);
                pms[2] = new MySqlParameter("stc", MySqlDbType.Text);
                pms[2].Value = txtStaffCode.Text;
                pms[3] = new MySqlParameter("datein", MySqlDbType.DateTime);
                MySqlCommand cmdd = new MySqlCommand("Login_in", conn);
                cmdd.CommandType = CommandType.StoredProcedure;
                cmdd.Parameters.AddRange(pms);
                conn.Open();
                if (cmdd.ExecuteNonQuery() == 1)
                {
                    MessageBox.Show("Thành Công");
                }
                else
                {
                    MessageBox.Show("thất bại");
                }


            }
            conn.Close();
        }

        private void btn_data_Click(object sender, EventArgs e)
        {
           
            DanhSachDiemDanh ds = new DanhSachDiemDanh();
            ds.Show();
          
        }

        private void btnDeletedata_Click(object sender, EventArgs e)
        {
            conn.Open();
            MySqlCommand cd = new MySqlCommand("delete from tbl_timeattendance", conn);
            cd.CommandType = CommandType.Text;
            if(cd.ExecuteNonQuery() == 1)
            {
                MessageBox.Show("ok");
            }
            else
            {
                MessageBox.Show("sai");
            }
            conn.Close();
        }
    }

   
}
