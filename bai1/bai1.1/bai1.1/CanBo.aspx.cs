using System;
using System.Globalization;

namespace bai1._1
{
    public partial class CanBo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //ngay thang nam
                for (int i = 1; i <= 31; i++)
                {
                    String s = i.ToString();
                    ngay.Items.Add(s);
                }
                for (int i = 1; i <= 12; i++)
                {
                    String s = i.ToString();
                    thang.Items.Add(s);
                }
                DateTime dt = DateTime.Now;
                int currentYear = dt.Year;
                for (int i = currentYear; i >= 1900; i--)
                {
                    String s = i.ToString() ;
                    nam.Items.Add(s);
                }

                //hoc ham, hoc vi
                hocvi.Items.Add("----");
                hocvi.Items.Add("Cử nhân");
                hocvi.Items.Add("Thạc sĩ");
                hocvi.Items.Add("Tiến sĩ");

                hocham.Items.Add("----");
                hocham.Items.Add("Phó giáo sư");
                hocham.Items.Add("Giáo sư");

                //ly luan chinh tri
                lyluanchinhtri.Items.Add("----");
                lyluanchinhtri.Items.Add("Full");
            }
        }
    }
}