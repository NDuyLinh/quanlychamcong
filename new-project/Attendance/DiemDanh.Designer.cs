namespace Attendance
{
    partial class DiemDanh
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.txtStaffCode = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btn_in = new System.Windows.Forms.Button();
            this.btn_out = new System.Windows.Forms.Button();
            this.btn_data = new System.Windows.Forms.Button();
            this.btnDeletedata = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // txtStaffCode
            // 
            this.txtStaffCode.Font = new System.Drawing.Font("Microsoft Sans Serif", 25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtStaffCode.Location = new System.Drawing.Point(270, 96);
            this.txtStaffCode.Margin = new System.Windows.Forms.Padding(6);
            this.txtStaffCode.Name = "txtStaffCode";
            this.txtStaffCode.Size = new System.Drawing.Size(364, 45);
            this.txtStaffCode.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(378, 29);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(109, 26);
            this.label1.TabIndex = 1;
            this.label1.Text = "StaffCode";
            // 
            // btn_in
            // 
            this.btn_in.Location = new System.Drawing.Point(218, 185);
            this.btn_in.Name = "btn_in";
            this.btn_in.Size = new System.Drawing.Size(142, 49);
            this.btn_in.TabIndex = 2;
            this.btn_in.Text = "IN";
            this.btn_in.UseVisualStyleBackColor = true;
            this.btn_in.Click += new System.EventHandler(this.btn_in_Click);
            // 
            // btn_out
            // 
            this.btn_out.Location = new System.Drawing.Point(427, 185);
            this.btn_out.Name = "btn_out";
            this.btn_out.Size = new System.Drawing.Size(133, 49);
            this.btn_out.TabIndex = 3;
            this.btn_out.Text = "OUT";
            this.btn_out.UseVisualStyleBackColor = true;
            this.btn_out.Click += new System.EventHandler(this.btn_out_Click);
            // 
            // btn_data
            // 
            this.btn_data.Location = new System.Drawing.Point(427, 269);
            this.btn_data.Name = "btn_data";
            this.btn_data.Size = new System.Drawing.Size(133, 42);
            this.btn_data.TabIndex = 4;
            this.btn_data.Text = "data";
            this.btn_data.UseVisualStyleBackColor = true;
            this.btn_data.Click += new System.EventHandler(this.btn_data_Click);
            // 
            // btnDeletedata
            // 
            this.btnDeletedata.Location = new System.Drawing.Point(619, 190);
            this.btnDeletedata.Name = "btnDeletedata";
            this.btnDeletedata.Size = new System.Drawing.Size(109, 44);
            this.btnDeletedata.TabIndex = 5;
            this.btnDeletedata.Text = "Delete Data";
            this.btnDeletedata.UseVisualStyleBackColor = true;
            this.btnDeletedata.Click += new System.EventHandler(this.btnDeletedata_Click);
            // 
            // DiemDanh
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1370, 749);
            this.Controls.Add(this.btnDeletedata);
            this.Controls.Add(this.btn_data);
            this.Controls.Add(this.btn_out);
            this.Controls.Add(this.btn_in);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtStaffCode);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(6);
            this.Name = "DiemDanh";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtStaffCode;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btn_in;
        private System.Windows.Forms.Button btn_out;
        private System.Windows.Forms.Button btn_data;
        private System.Windows.Forms.Button btnDeletedata;
    }
}

