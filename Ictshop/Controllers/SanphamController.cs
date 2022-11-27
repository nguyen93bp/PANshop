using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PANshop.Models;
using PagedList;
using PagedList.Mvc;

namespace PANshop.Controllers
{
    public class SanphamController : Controller
    {
        Qlbanhang db = new Qlbanhang();

        // GET: Sanpham
        public ActionResult Danhmuc(int id, int? page)
        {
            ViewBag.Mahang = id;
            //Tạo biến quy định số sản phẩm trên mỗi trang 
            int iSize = 6;
            //Tạo biến số trang
            int iPageNum = (page ?? 1);
            var sanpham = (from s in db.Sanphams where s.Mahang == id orderby id select s);
            return View(sanpham.ToPagedList(iPageNum, iSize));
        }
        public ActionResult DanhmucPartial()
        {
            var danhmuc = from Mahang in db.Hangsanxuats select Mahang;
            return PartialView(danhmuc);
        }

        public ActionResult Sanpham(int id, int? page)
        {
            ViewBag.Mahdh = id;
            //Tạo biến quy định số sản phẩm trên mỗi trang 
            int iSize = 9;
            //Tạo biến số trang
            int iPageNum = (page ?? 1);
            var sanpham = (from s in db.Sanphams where s.Masp == id orderby id select s);
            return View(sanpham.ToPagedList(iPageNum, iSize));
        }
        public ActionResult dtiphonepartial()
        {
            var ip = db.Sanphams.Where(n=>n.Mahang==2).Take(4).ToList();
           return PartialView(ip);
        }
        public ActionResult dtsamsungpartial()
        {
            var ss = db.Sanphams.Where(n => n.Mahang == 1).Take(4).ToList();
            return PartialView(ss);
        }
        public ActionResult dtxiaomipartial()
        {
            var mi = db.Sanphams.Where(n => n.Mahang == 3).Take(4).ToList();
            return PartialView(mi);
        }
        //public ActionResult dttheohang()
        //{
        //    var mi = db.Sanphams.Where(n => n.Mahang == 5).Take(4).ToList();
        //    return PartialView(mi);
        //}
        public ActionResult xemchitiet(int Masp=0)
        {
            var chitiet = db.Sanphams.SingleOrDefault(n=>n.Masp==Masp);
            if (chitiet == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(chitiet);
        }

    }

}