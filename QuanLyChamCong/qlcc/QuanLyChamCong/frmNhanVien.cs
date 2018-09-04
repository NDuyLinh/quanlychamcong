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
    public partial class frmNhanVien : DevExpress.XtraEditors.XtraForm
    {
        public frmNhanVien()
        {
            InitializeComponent();
        }

        NhanVienBUS bus = new NhanVienBUS();
        NhanVien obj = new NhanVien();
        private bool IsInsert = false;

        void KhoaDieuKhien()
        {
            txtMaNV.Enabled = false;
            txtTenNV.Enabled = false;
            txtaddress.Enabled = false;
            txtEmail.Enabled = false;
            txtSDT.Enabled = false;
            txtSCMND.Enabled = false;
            cbbCV.Enabled = false;
            cbbHSL.Enabled = false;
          
            cbbPB.Enabled = false;
            radio_Nam.Enabled = false;
            radio_Nu.Enabled = false;
            dateNS.Enabled = false;
            dateNVL.Enabled = false;

            btn_them.Enabled = true;
            btn_Xoa.Enabled = true;
            btn_Luu.Enabled = false;
            btn_Sua.Enabled = true;
            
        }

        void MoDieuKhien()
        {
            txtMaNV.Enabled = true;
            txtTenNV.Enabled = true;
            txtaddress.Enabled = true;
            txtEmail.Enabled = true;
            txtSDT.Enabled = true;
            txtSCMND.Enabled = true;
            cbbCV.Enabled = true;
            cbbHSL.Enabled = true;
           
            cbbPB.Enabled = true;
            radio_Nam.Enabled = true;
            radio_Nu.Enabled = true;
            dateNS.Enabled = true;
            dateNVL.Enabled = true;

            btn_them.Enabled = false;
            btn_Xoa.Enabled = false;
            btn_Luu.Enabled = true;
            btn_Sua.Enabled = false;
        }

        void XoaText()
        {
            txtMaNV.Text = string.Empty;
            txtTenNV.Text = string.Empty;
            txtaddress.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtSDT.Text = string.Empty;
            txtSCMND.Text = string.Empty;
            cbbCV.Text = string.Empty;
          
            cbbPB.Text = string.Empty;
            radio_Nam.Text = string.Empty;
            radio_Nu.Text = string.Empty;
            dateNS.Text = string.Empty;
            dateNVL.Text = string.Empty;
        }

        void hienthi()
        {
            dataNhanVien.DataSource = bus.GetData();
        }

        private void frmNhanVien_Load(object sender, EventArgs e)
        {
            hienthi();
            KhoaDieuKhien();
        }

        private void btn_them_Click(object sender, EventArgs e)
        {
            MoDieuKhien();
            IsInsert = true;
        }

        private void btn_Sua_Click(object sender, EventArgs e)
        {
            MoDieuKhien();
            txtMaNV.Enabled = false;
            IsInsert = false;
        }

        private void cbbPB_DropDown(object sender, EventArgs e)
        {
            cbbPB.DataSource = bus.GetDataPB();
            cbbPB.DisplayMember = "TenPB";
            cbbPB.ValueMember = "MaPB";
        }

        private void cbbCV_DropDown(object sender, EventArgs e)
        {
            cbbCV.DataSource = bus.GetDataCV();
            cbbCV.DisplayMember = "TenCV";
            cbbCV.ValueMember = "MaCV";
        }

        private void cbbHSL_DropDown(object sender, EventArgs e)
        {
            cbbHSL.DataSource = bus.GetDataHSL();
            cbbHSL.DisplayMember = "LuongCB";
            cbbHSL.ValueMember = "HeSoLuong";
        }

        private string getTextCombobox(string mpb)
        {
            DataTable dt = bus.GetDataPB();
            for(int i = 0; i < dt.Rows.Count; i++)
            {
                if(dt.Rows[i][0].ToString() == mpb)
                {
                    return dt.Rows[i][1].ToString();
                }
            }
            return "";
        }

        private void btn_Luu_Click(object sender, EventArgs e)
        {
            obj.MaNhanVien = txtMaNV.Text;

            obj.DiaChi = txtaddress.Text;
            obj.Email = txtEmail.Text;
            if (radio_Nam.Checked)
            {
                obj.GioiTinh = "Nam";
            }
            else
            {
                obj.GioiTinh = "Nữ";
            }

            obj.MaPB = cbbPB.SelectedValue.ToString();
            obj.MaCV = cbbCV.SelectedValue.ToString();
            obj.TenNV = txtTenNV.Text;
            obj.HeSoLuong = cbbHSL.SelectedValue.ToString();
            obj.NgaySinh = dateNS.Value.Date.ToString("yyyy/MM/dd");
            obj.NgayVaoLam = dateNVL.Value.Date.ToString("yyyy/MM/dd");
            obj.SoCM = txtSCMND.Text;
            obj.DienThoai = txtSDT.Text;
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



        private void dataNhanVien_Click(object sender, EventArgs e)
        {
          KhoaDieuKhien();
                try
                {
                    txtMaNV.Text = dataNhanVien.CurrentRow.Cells[0].Value.ToString();
                    cbbPB.Text = getTextCombobox(dataNhanVien.CurrentRow.Cells[1].Value.ToString());
                   
                    cbbCV.Text = dataNhanVien.CurrentRow.Cells[2].Value.ToString();
                    cbbHSL.Text = dataNhanVien.CurrentRow.Cells[3].Value.ToString();
                if (dataNhanVien.CurrentRow.Cells[5].Value.ToString().Equals("Nam"))
                    {
                        radio_Nam.Checked = true;
                    }
                    else
                    {
                        radio_Nu.Checked = true;
                    }
                    txtTenNV.Text = dataNhanVien.CurrentRow.Cells[4].Value.ToString();
                    dateNS.Text = dataNhanVien.CurrentRow.Cells[6].Value.ToString();
                    txtSCMND.Text = dataNhanVien.CurrentRow.Cells[8].Value.ToString();
                  

                }
                catch
                {
                    MessageBox.Show("lỗi");
                }
            }

       

        private void btn_Luu_Click_1(object sender, EventArgs e)
        {
            btn_Luu_Click(sender, e);
        }

        private void btn_Xoa_Click(object sender, EventArgs e)
        {
            try
            {
                bus.Delete(txtMaNV.Text);
                XtraMessageBox.Show("Đã Xóa thông tin thành công");
                XoaText();
                KhoaDieuKhien();
                hienthi();
            }
            catch
            {
                XtraMessageBox.Show("Lỗi");
            }
        }

        private void cbbPB_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void dataNhanVien_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void txtSDT_TextChanged(object sender, EventArgs e)
        {
            if (System.Text.RegularExpressions.Regex.IsMatch(txtSDT.Text, "[^0-9]"))
            {
              
                txtSDT.Text = txtSDT.Text.Remove(txtSDT.Text.Length - 1);
            }
        }
    }
    
}