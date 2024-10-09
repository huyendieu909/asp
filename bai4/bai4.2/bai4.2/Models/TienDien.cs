using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace bai4._2.Models
{
    public class TienDien
    {
        public String hoten { get; set; }    
        public bool uutien { get; set; }
        public double chisocu { get; set; }
        public double chisomoi { get; set; }
        public String dlLoaiDienTieuThu { get; set; }
        public TienDien(string hoten, bool uutien, double chisocu, double chisomoi, double tien)
        {
            this.hoten = hoten;
            this.uutien = uutien;
            this.chisocu = chisocu;
            this.chisomoi = chisomoi;
        }
        public TienDien() { }

        public double dien
        {
            get
            {
                return chisomoi - chisocu;
            }
        }
        public double tien
        {
            get
            {
                double tientra = 0;
                if (dien >= 200)
                {
                    tientra = (dien - 200) * 4000 + 50 * (3000 + 2500) + 100 * 2000;
                }
                else if (dien >= 150)
                {
                    tientra = (dien - 150) * 3000 + 50 * 2500 + 100 * 2000;
                }
                else if (dien >= 100)
                {
                    tientra = (dien - 100) * 2500 + 100 * 2000;
                }
                else tientra = dien * 2000;
                if (dlLoaiDienTieuThu == "kinhdoanh") tientra *= (1 + 0.2);
                if (dlLoaiDienTieuThu == "sanxuat") tientra *= (1 + 0.3);
                if (uutien) tientra *= (1 - 0.1);
                return tientra;
            }
        }
    }
}