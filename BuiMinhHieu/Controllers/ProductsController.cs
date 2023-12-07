using BuiMinhHieu.Data;
using BuiMinhHieu.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PagedList.Core;

namespace BuiMinhHieu.Controllers
{
    public class ProductsController : Controller
    {
        private readonly dbMarketsContext _context;

        public ProductsController(dbMarketsContext context)
        {
            _context = context;
        }

        public IActionResult Index(int? page)
        {
            try
            {
                var pageNumber = page == null || page <= 0 ? 1 : page.Value;
                var pageSize = 10;
                var LsProduct = _context.Products
                    .AsNoTracking()
                    .OrderByDescending(x => x.DateCreated);
                PagedList<Product> models = new PagedList<Product>(LsProduct, pageNumber, pageSize);
                ViewBag.CurrentPage = pageNumber;
                return View(models);
            }
            catch
            {
                return RedirectToAction("Index", "Home");
            }
        }

        public IActionResult List(int id, int page=1)
        {
            try
            {
                var pageSize = 10;
                var danhmuc = _context.Categories.Find(id);
                var LsProduct = _context.Products
                    .AsNoTracking()
                    .Where(x => x.CatId== id)
                    .OrderByDescending(x => x.DateCreated);
                PagedList<Product> models = new PagedList<Product>(LsProduct, page, pageSize);
                ViewBag.CurrentPage = page;
                ViewBag.CurrentCat = danhmuc;
                return View(models);
            }
            catch
            {
                return RedirectToAction("Index", "Home");
            }

        }

        public IActionResult Details(int productId)
        {
            try
            {
                var product = _context.Products.Include(x => x.Cat).FirstOrDefault(x => x.ProductId == productId);
                if (product == null)
                {
                    RedirectToAction("Index");
                }
                return View(product);
            }
            catch
            {
                return RedirectToAction("Index", "Home");
            }

        }
    }
}
