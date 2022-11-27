using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PANshop.Controllers
{
    public class HomeController : Controller
    {
      
        public ActionResult Index()
        {
       
            return View();

        }

        public ActionResult Menu()
        {

            return View();

        }

        public ActionResult About()
        {
            ViewBag.Message = "Thông tin về chúng tôi";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Thông tin liên hệ";

            return View();
        }
        public ActionResult SlidePartial()
        {
            return View();

        }
    }
}