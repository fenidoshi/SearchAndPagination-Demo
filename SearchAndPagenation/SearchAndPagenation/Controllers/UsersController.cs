using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SearchAndPagenation.Models;

namespace SearchAndPagenation.Controllers
{

    public class UserController : Controller
    {
        private string ConnectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        private readonly SearchEntities _dbContext;

        [HttpGet]
        public ActionResult Index(int page = 1, int pageSize = 5, string searchTerm = "")
        {
            var query = _dbContext.Users.AsQueryable();
            if (!string.IsNullOrEmpty(searchTerm))
            {
                query = query.Where(u =>
                    u.FirstName.Contains(searchTerm) ||
                    u.LastName.Contains(searchTerm) ||
                    u.EmailId.Contains(searchTerm) ||
                    u.Address.Contains(searchTerm) ||
                    u.DateOfBirth.ToString().Contains(searchTerm));
            }

            var totalUsers = query.Count();
            var totalPages = (int)Math.Ceiling((double)totalUsers / pageSize);

            var users = query
                .OrderBy(u => u.Id)
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .ToList();

            var model = new UserViewModel
            {
                Users = users,
                Pagination = new PaginationViewModel
                {
                    CurrentPage = page,
                    PageSize = pageSize,
                    TotalPages = totalPages
                },
                SearchTerm = searchTerm
            };

            return View(model);
        }

        [HttpGet]
        public JsonResult loadData(int page = 1, int pageSize = 5, string searchTerm = "")
        {
            var query = _dbContext.Users.AsQueryable();
            if (!string.IsNullOrEmpty(searchTerm))
            {
                query = query.Where(u =>
                    u.FirstName.Contains(searchTerm) ||
                    u.LastName.Contains(searchTerm) ||
                    u.EmailId.Contains(searchTerm) ||
                    u.Address.Contains(searchTerm) ||
                    u.DateOfBirth.ToString().Contains(searchTerm));
            }

            var totalUsers = query.Count();
            var totalPages = (int)Math.Ceiling((double)totalUsers / pageSize);

            var users = query
                .OrderBy(u => u.Id)
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .ToList();

            var model = new UserViewModel
            {
                Users = users,
                Pagination = new PaginationViewModel
                {
                    CurrentPage = page,
                    PageSize = pageSize,
                    TotalPages = totalPages
                },
                SearchTerm = searchTerm
            };

            return Json(model, JsonRequestBehavior.AllowGet);
        }
        public UserController()
        {
            _dbContext = new SearchEntities();
        }

     
        }

    }
