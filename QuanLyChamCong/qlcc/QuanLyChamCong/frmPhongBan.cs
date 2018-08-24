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
using ValueObject;
using BUS;



namespace QuanLyChamCong
{
    public partial class frmPhongBan : DevExpress.XtraEditors.XtraForm
    {
        public frmPhongBan()
        {
            InitializeComponent();
        }

        PhongBan obj = new PhongBan();
        PhongBanBUS bus = new PhongBanBUS();
        private bool IsInsert = true;

        void KhoaDieuKhien()
        {
            txtMaPB.Enabled = false;
            txtTenPB.Enabled = false;
            

            btn_them.Enabled = true;
            btn_luu.Enabled = false;
            btn_sua.Enabled = true;
            btn_xoa.Enabled = true;
        }

        void MoKhoaDieuKhien()
        {
            txtMaPB.Enabled = true;
            txtTenPB.Enabled = true;

            btn_them.Enabled = false;
            btn_luu.Enabled = true;
            btn_sua.Enabled = false;
            btn_xoa.Enabled = false;
        }

        void Xoatext()
        {
            txtMaPB.Text = string.Empty;
            txtTenPB.Text = string.Empty;
        }

        void HienTHi()
        {
            data.DataSource = bus.GetData();
        }

        private void frmPhongBan_Load(object sender, EventArgs e)
        {
            KhoaDieuKhien();
            HienTHi();
        }

        private void btn_them_Click(object sender, EventArgs e)
        {
            MoKhoaDieuKhien();
            IsInsert = true;
        }

        private void btn_sua_Click(object sender, EventArgs e)
        {
            MoKhoaDieuKhien();
            txtMaPB.Enabled = false;
            IsInsert = false;
        }

        private void btn_xoa_Click(object sender, EventArgs e)
        {
            try
            {
                bus.Delete(txtMaPB.Text);
                XtraMessageBox.Show("Đã Xóa thông tin thành công");
                Xoatext();
                KhoaDieuKhien();
                HienTHi();
            }
            catch
            {

            }
        }

        private void btn_luu_Click(object sender, EventArgs e)
        {
            obj.IDPhongBan = txtMaPB.Text;
            obj.namePhongBan = txtTenPB.Text;
            if(IsInsert == true)
            {
                bus.Insert(obj);
                XtraMessageBox.Show("Thêm thông tin thành công");
                HienTHi();
                Xoatext();
                KhoaDieuKhien();
            }
            else
            {
                bus.Update(obj);
                XtraMessageBox.Show("Sửa thông tin thành công");
                HienTHi();
            }
        }

        private void data_Click(object sender, EventArgs e)
        {
            KhoaDieuKhien();
            try
            {
                txtMaPB.Text = data.CurrentRow.Cells[0].Value.ToString();
                txtTenPB.Text = data.CurrentRow.Cells[1].Value.ToString();
            }
            catch
            {
                MessageBox.Show("lỗi");
            }
        }
    }
}