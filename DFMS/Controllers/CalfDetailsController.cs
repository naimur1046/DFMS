using DFMS.Models.Connction;
using DFMS.Models.Entity;
using Microsoft.AspNetCore.Mvc;

namespace DFMS.Controllers
{
    public class CalfDetailsController : Controller
    {

        [HttpGet]
        public IActionResult Index()
        {

            using (var session = FluentNhibernateHelper.GetSession())
            {
                
                var calfDetailsList = session.Query<CalfDetails>().ToList();

                return View(calfDetailsList);
            }

            
        }
        [HttpPost]
        public IActionResult 
    }
}
