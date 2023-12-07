using Microsoft.AspNetCore.Mvc;

namespace BuiMinhHieu.Areas.Admin.Controllers
{
    [Area("Admin")]
    //[Route("Admin/[action]")]
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
