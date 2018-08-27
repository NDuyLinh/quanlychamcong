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
    public partial class DanhSachDiemDanh : Form
    {
        public DanhSachDiemDanh()
        {
            InitializeComponent();
        }
        MySqlConnection conn = new MySqlConnection("Server=localhost;Port=3306;DataBase=attendance;User ID = root;password=;CharSet=utf8;");

        private void btnLoad_Click(object sender, EventArgs e)
        {
            conn.Open();
            MySqlCommand cmd = new MySqlCommand("Query_staff", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            dt.Load(cmd.ExecuteReader());
            dataGridView1.DataSource = dt;
            conn.Close();
        }

        private void btn_Back_Click(object sender, EventArgs e)
        {
            DiemDanh dd = new DiemDanh();
            dd.Show();
        }
    }
}
