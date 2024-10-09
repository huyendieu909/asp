using bai4._2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace bai4._2.Controllers
{
    public class TinhTienDienController : Controller
    {
        // GET: TinhTienDien
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost] 
        public ActionResult TinhTien(TienDien td)
        {
            if (Request["uutien"] == "on") td.uutien = true; 
            return View(td);
        }
    }
}