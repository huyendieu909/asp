using bai5._2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;

namespace bai5._2.Controllers
{
    public class MailController : Controller
    {
        // GET: Mail
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(MailInfo mi)
        {
            try
            {
                using (MailMessage mail = new MailMessage())
                {
                    mail.From = new MailAddress(mi.From);
                    mail.To.Add(mi.To);
                    mail.Subject = mi.Subject;
                    mail.Body = mi.Body;
                    mail.IsBodyHtml = true;
                    using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 465))
                    {
                        smtp.UseDefaultCredentials = false;
                        smtp.Credentials = new NetworkCredential(mi.From, mi.Password);
                        smtp.EnableSsl = true;
                        smtp.Timeout = 10000000;
                        try
                        {
                            smtp.Send(mail);
                        } catch (SmtpException e)
                        {
                            System.Diagnostics.Debug.WriteLine(e.ToString());
                        }
                    }
                }
                ViewBag.result = "Thành công";
                return RedirectToAction("Index", "Mail");
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.Message);
                return View();
            }
        }
    }
}