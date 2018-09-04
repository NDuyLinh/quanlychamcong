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
    public partial class frmdangnhap : DevExpress.XtraEditors.XtraForm
    {
        public frmdangnhap()
        {
            InitializeComponent();
        }

        DangNhapBUS bus = new DangNhapBUS();
        TaiKhoan obj = new TaiKhoan();

        private void simpleButton1_Click(object sender, EventArgs e)
        {
            string username = txtUserName.Text;
            string password = txtPassword.Text;
            obj.TenDangNhap = username;
            obj.MatKhau = password;
            
            if(bus.check_taikhoan(obj))
            {
                this.Hide();
                TabMenu tb = new TabMenu();
                tb.Show();
            }
            else
            {
                MessageBox.Show("Sai Tên Đăng Nhập và Tài Khoản");
            }

        }

        private void txtPassword_KeyDown(object sender, KeyEventArgs e)
        {
            if(e.KeyCode == Keys.Enter)
            {
                simpleButton1.PerformClick();
            }
        }
    }
}