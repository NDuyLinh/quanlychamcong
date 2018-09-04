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
    public partial class frmChucVu : DevExpress.XtraEditors.XtraForm
    {
        public frmChucVu()
        {
            InitializeComponent();
        }

        ChucVu obj = new ChucVu();
        ChucVuBUS bus = new ChucVuBUS();
        private bool IsInsert = false;
    
        void KhoaDieuKhien()
        {
            txtMaCV.Enabled = false;
            txtTenCV.Enabled = false;

            btn_them.Enabled = true;
            btn_Luu.Enabled = false;
            btn_sua.Enabled = true;
            btn_xoa.Enabled = true;
        }
        
          void MoKhoaDieuKhien()
        {
            txtMaCV.Enabled = true;
            txtTenCV.Enabled = true;

            btn_them.Enabled = false;
            btn_Luu.Enabled = true;
            btn_sua.Enabled = false;
            btn_xoa.Enabled = false;
        }

        void Xoatext()
        {
            txtMaCV.Text = string.Empty;
            txtTenCV.Text = string.Empty;
        }

        void hienthi()
        {
            dataChucVu.DataSource = bus.GetData();
        }

        private void frmChucVu_Load(object sender, EventArgs e)
        {
            KhoaDieuKhien();
            hienthi();
        }

        private void btn_them_Click(object sender, EventArgs e)
        {
            MoKhoaDieuKhien();
            IsInsert = true;
        }

        private void btn_sua_Click(object sender, EventArgs e)
        {
            MoKhoaDieuKhien();
            txtMaCV.Enabled = false;
            IsInsert = false;
        }

        private void btn_xoa_Click(object sender, EventArgs e)
        {
            try
            {
               
                bus.Delete(txtMaCV.Text);
                XtraMessageBox.Show("Đã Xóa thông tin thành công");
                Xoatext();
                KhoaDieuKhien();
                hienthi();
            }
            catch
            {
                XtraMessageBox.Show("Lỗi");
            }
        }

        private void btn_Luu_Click(object sender, EventArgs e)
        {
            obj.MaCV = txtMaCV.Text;
            obj.TenCV = txtTenCV.Text;
            if (IsInsert == true)
            {
                bus.Insert(obj);
                XtraMessageBox.Show("Thêm thông tin thành công");
                hienthi();
                Xoatext();
                KhoaDieuKhien();
            }
            else
            {
                bus.Update(obj);
                XtraMessageBox.Show("Sửa thông tin thành công");
                hienthi();
            }
        }

        private void dataChucVu_Click(object sender, EventArgs e)
        {
            KhoaDieuKhien();
            try
            {
                txtMaCV.Text = dataChucVu.CurrentRow.Cells[0].Value.ToString();
                txtTenCV.Text = dataChucVu.CurrentRow.Cells[1].Value.ToString();
            }
            catch
            {
                MessageBox.Show("lỗi");
            }
        }
    }
}