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

namespace QuanLyChamCong
{
    public partial class TabMenu : DevExpress.XtraEditors.XtraForm
    {
        public TabMenu()
        {
            InitializeComponent();
            //nhanvien
            frmNhanVien frm = new frmNhanVien();
            frm.TopLevel = false;
            frm.Visible = true;
            frm.FormBorderStyle = FormBorderStyle.None;
            frm.Dock = DockStyle.Fill;
            xtraTabControl1.TabPages[0].Controls.Add(frm);

            //chucvu
            frmChucVu frmnv = new frmChucVu();
            frmnv.TopLevel = false;
            frmnv.Visible = true;
            frmnv.FormBorderStyle = FormBorderStyle.None;
            frmnv.Dock = DockStyle.Fill;
            xtraTabControl1.TabPages[1].Controls.Add(frmnv);

            //phongban

            frmPhongBan pb = new frmPhongBan();
            pb.TopLevel = false;
            pb.Visible = true;
            pb.FormBorderStyle = FormBorderStyle.None;
            pb.Dock = DockStyle.Fill;
            xtraTabControl1.TabPages[2].Controls.Add(pb);

            //luong
            frmLuong luong = new frmLuong();
            luong.TopLevel = false;
            luong.Visible = true;
            luong.FormBorderStyle = FormBorderStyle.None;
            luong.Dock = DockStyle.Fill;
            xtraTabControl1.TabPages[3].Controls.Add(luong);

            //chamcong
            frmChamCong cc  = new frmChamCong();
            cc.TopLevel = false;
            cc.Visible = true;
            cc.FormBorderStyle = FormBorderStyle.None;
            cc.Dock = DockStyle.Fill;
            xtraTabControl1.TabPages[4].Controls.Add(cc);
        }

       

        private void btn_cv_Click(object sender, EventArgs e)
        {
            frmChucVu cv = new frmChucVu();
            cv.Show();
        }

        private void btn_PB_Click(object sender, EventArgs e)
        {
            frmPhongBan pb = new frmPhongBan();
            pb.Show();
        }

        private void btn_Luong_Click(object sender, EventArgs e)
        {
            frmLuong luong = new frmLuong();
            luong.Show();
        }

        private void TabMenu_Load(object sender, EventArgs e)
        {

        }
    }
}