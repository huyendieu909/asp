using bai5._1.Models;
using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace bai5._1.Controllers
{
    public class StaffController : Controller
    {
        // GET: Staff
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Save(Staff s)
        {
            try
            {
                var image = Request.Files["StaffImage2"];
                string folderPath = Server.MapPath("~/Images/");
                if (!System.IO.Directory.Exists(folderPath))
                {
                    System.IO.Directory.CreateDirectory(folderPath);
                }
                var pathImage = System.IO.Path.Combine(folderPath, image.FileName);
                image.SaveAs(pathImage);

                System.Diagnostics.Debug.WriteLine(pathImage);

                string path = Server.MapPath("~/StaffInfo.txt");
                string[] info = { s.StaffId.ToString(), s.StaffName, s.DateOfBirth.ToString(), s.Salary.ToString(), image.FileName };
                System.IO.File.WriteAllLines(path, info);
                ViewBag.message = "Lưu thành công";
                return View("Index");
            }
            catch (Exception ex)
            {
                ViewBag.message = "Lưu thất bại: " + ex.Message;
                return View("Index");
            }
        }
        [HttpGet]
        public ActionResult Open()
        {
            var path = Server.MapPath("~/StaffInfo.txt");
            string[] info = System.IO.File.ReadAllLines(path);
            Staff staff = new Staff();
            staff.StaffId = int.Parse(info[0]);
            staff.StaffName = info[1];
            staff.DateOfBirth = DateTime.Parse(info[2]);
            staff.Salary = Decimal.Parse(info[3]);
            staff.StaffImage = info[4];
            ViewBag.id = staff.StaffId;
            ViewBag.name = staff.StaffName;
            ViewBag.dob = staff.DateOfBirth;
            ViewBag.salary = staff.Salary;
            var c = "~/Images/" + staff.StaffImage; 
            ViewBag.image = "../../Images/" + staff.StaffImage;
            System.Diagnostics.Debug.WriteLine(c);
            return View("Index");
        }
    }
}