using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int ngayCong = int.Parse(tbNgayCong.Text);
            int bacLuong = int.Parse(tbBacLuong.Text);
            long NCTL = (ngayCong < 25) ? ngayCong : (ngayCong - 25) * 2 + 25;
            long PhuCap = (ddlChucVu.SelectedValue == "TruongPhong") ? 500000 : (ddlChucVu.SelectedValue == "PhoTruongPhong") ? 300000 : 100000;
            tienLinh.Text = (bacLuong * 650000 * NCTL + PhuCap).ToString();
        }

        protected void btnTinh_Click(object sender, EventArgs e)
        {
            
            string maNV = tbMaNV.Text;
            string ngayCong = tbNgayCong.Text;
            string bacLuong = tbBacLuong.Text;
            double tienDuocLinh = double.Parse(tienLinh.Text);
            Response.Redirect($"XL_TienLuong.aspx?maNV={maNV}&ngayCong={ngayCong}&tienLinh={tienDuocLinh}");
            Server.Transfer("~/XL_TienLuong.aspx");
        }

    }
}