using System;

namespace WebApplication2
{
    public partial class XL_TienLuong : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lbMaNV.Text = Request.QueryString["maNV"];
                lbNgayCong.Text = Request.QueryString["ngayCong"];
                lbTienDuocLinh.Text = Request.QueryString["tienLinh"];
            }
        }
    }
}