using bai4._1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace bai4._1.Controllers
{
    public class XuLyController : Controller
    {
        // GET: XuLy
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Input(PhepToan p)
        {
            switch (p.op)
            {
                case "+":
                    ViewBag.KetQua = p.a + p.b; break;
                case "-":
                    ViewBag.KetQua = p.a - p.b; break;
                case "*":
                    ViewBag.KetQua = p.a * p.b; break;
                case "/":
                    if (p.b == 0) ViewBag.KetQua = "Lỗi chia cho 0!";
                    else ViewBag.KetQua = p.a / p.b; 
                    break;
            }
            return View();
        }
    }
}