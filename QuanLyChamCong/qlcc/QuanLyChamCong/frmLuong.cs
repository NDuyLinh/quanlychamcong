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
    public partial class frmLuong : DevExpress.XtraEditors.XtraForm
    {
        public frmLuong()
        {
            InitializeComponent();
        }
        LuongBUS bus = new LuongBUS();
        Luong obj = new Luong();
        private bool IsInsert = false;

        void KhoaDieuKhien()
        {
            txtMahsl.Enabled = false;
            txtLuong.Enabled = false;


            btn_them.Enabled = true;
            btn_luu.Enabled = false;
            btn_Sua.Enabled = true;
            btn_Xoa.Enabled = true;
        }

        void MoKhoaDieuKhien()
        {
            txtMahsl.Enabled = true;
            txtLuong.Enabled = true;


            btn_them.Enabled = false;
            btn_luu.Enabled = true;
            btn_Sua.Enabled = false;
            btn_Xoa.Enabled = false;
        }

        void XoaText()
        {
            txtLuong.Text = string.Empty;
            txtMahsl.Text = string.Empty;
        }

        void hienthi()
        {
            dataLuong.DataSource = bus.GetData();
        }

        private void frmLuong_Load(object sender, EventArgs e)
        {
            hienthi();
            KhoaDieuKhien();
        }

        private void btn_them_Click(object sender, EventArgs e)
        {
            MoKhoaDieuKhien();
            IsInsert = true;
        }

        private void btn_Sua_Click(object sender, EventArgs e)
        {
            MoKhoaDieuKhien();
            txtMahsl.Enabled = false;
            IsInsert = false;
        }

        private void btn_Xoa_Click(object sender, EventArgs e)
        {
            try
            {
                bus.Delete(txtMahsl.Text);
                XtraMessageBox.Show("Đã Xóa thông tin thành công");
                XoaText();
                KhoaDieuKhien();
                hienthi();
            }
            catch
            {

            }
        }

        private void btn_luu_Click(object sender, EventArgs e)
        {
            obj.HeSoLuong = txtMahsl.Text;
            obj.LuongCB = txtLuong.Text;
            if (IsInsert == true)
            {
                bus.Insert(obj);
                XtraMessageBox.Show("Thêm thông tin thành công");
                hienthi();
                XoaText();
                KhoaDieuKhien();
            }
            else
            {
                bus.Update(obj);
                XtraMessageBox.Show("Sửa thông tin thành công");
                hienthi();
            }
        }

        private void dataLuong_Click(object sender, EventArgs e)
        {
            KhoaDieuKhien();
            try
            {
                txtMahsl.Text = dataLuong.CurrentRow.Cells[0].Value.ToString();
                txtLuong.Text = dataLuong.CurrentRow.Cells[1].Value.ToString();
            }
            catch
            {
                MessageBox.Show("lỗi");
            }
        }
    }
}