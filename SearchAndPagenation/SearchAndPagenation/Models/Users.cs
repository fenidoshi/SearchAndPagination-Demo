using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SearchAndPagenation.Models
{
    public class Users
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmailId { get; set; }
        public string Address { get; set; }
        public DateTime DateOfBirth { get; set; }
    }
    public class UserViewModel
    {
        public List<Users> Users { get; set; }
        public PaginationViewModel Pagination { get; set; }
        public string SearchTerm { get; set; }
    }

    public class PaginationViewModel
    {
        public int CurrentPage { get; set; }
        public int PageSize { get; set; }
        public int TotalPages { get; set; }
    }

}