using SearchAndPagenation.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SearchAndPagenation.ViewModel
{
    public class UserViewModel
    {
        public List<Users> Users { get; set; }
        public int TotalPages { get; set; }
        public int CurrentPage { get; set; }
        public int PageSize { get; set; }
        public string SearchTerm { get; set; }
    }
}