using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using BUS;
using ValueObject;


namespace QuanLyChamCong
{
    public partial class frmChamCong : DevExpress.XtraEditors.XtraForm
    {
        public frmChamCong()
        {
            InitializeComponent();
        }

        ChamCongBUS bus = new ChamCongBUS();
        ChamCong obj = new ChamCong();
        private bool IsInsert = false;

        private void frmChamCong_Load(object sender, EventArgs e)
        {
            data.DataSource = bus.Getdata();
            Column3.DataSource = new string[] { "Đi Làm", "Nghỉ Làm Có Phép", "Nghỉ Làm Không Phép" };

        }

        private void btn_update_Click(object sender, EventArgs e)
        {
            int i = 0;
            foreach (DataGridViewRow row in data.Rows)
            {
                //DataGridViewComboBoxCell cell1 = (DataGridViewComboBoxCell)(row.Cells["Dispersion parameters"]);
                //cell1.DataSource = new string[] { "McElroy-Pooler", "Pasquill-Gifford" };

                string star = (string)row.Cells["Column3"].Value;
                if(star != null)
                {
                    string maNV = row.Cells["Column1"].Value.ToString();
                    obj.MaNhanVien = maNV;
                    obj.TinhTrang = star;
                    obj.Ngay = date.Value.Date.ToString("yyyy/MM/dd");
                    bus.Insert(obj);
                    i++;

                }

            }
            if (i > 0)
            {
                MessageBox.Show("Chấm công thành công");
            }

        }

        private void data_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}