using BuiMinhHieu.Data;
using BuiMinhHieu.Models;
using BuiMinhHieu.Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Microsoft.CodeAnalysis;

namespace BuiMinhHieu.Controllers
{
    public class CartController : Controller
    {
        private readonly dbMarketsContext _context;

        public Cart? Cart { get; set; }
        public CartController(dbMarketsContext context)
        {
            _context= context;
        }
        public IActionResult Index()
        {
            return View("Cart");
        }

        public IActionResult AddToCart(int ProductId)
        {
            Product? product = _context.Products.FirstOrDefault(p => p.ProductId == ProductId);
            if(product != null)
            {
                Cart = HttpContext.Session.GetJson<Cart>("cart") ?? new Cart();
                Cart.AddItem(product, 1);
                HttpContext.Session.SetJson("cart", Cart);
            }
            return View("Cart", Cart);
        }

        public IActionResult UpdateCart(int ProductId)
        {
            Product? product = _context.Products.FirstOrDefault(p => p.ProductId == ProductId);
            if (product != null)
            {
                Cart = HttpContext.Session.GetJson<Cart>("cart") ?? new Cart();
                Cart.AddItem(product, -1);
                HttpContext.Session.SetJson("cart", Cart);
            }
            return View("Cart", Cart);
        }

        public IActionResult RemoveFromCart(int productId)
        {
            Product? product = _context.Products.FirstOrDefault(p => p.ProductId == productId);
            if (product != null)
            {
                Cart = HttpContext.Session.GetJson<Cart>("cart");
                Cart.RemoveLine(product);
                HttpContext.Session.SetJson("cart", Cart);
            }

            return View("Cart", Cart);
        }
    }
}
