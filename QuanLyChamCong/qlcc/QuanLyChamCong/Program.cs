using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyChamCong
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.s
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            //Application.Run(new frmNhanVien());
            Application.Run(new TabMenu());
            //Application.Run(new frmdangnhap());
            
        }
    }
}
