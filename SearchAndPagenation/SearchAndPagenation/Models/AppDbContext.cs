using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration.Conventions;

namespace SearchAndPagenation.Models
{
    public class SearchEntities : DbContext
    {
        public SearchEntities() : base("dbconnection")
        {
        }
        public DbSet<Users> Users { get; set; }
        
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            // Configure table name and other properties for the User entity
            modelBuilder.Entity<Users>()
                .ToTable("Users")
                .HasKey(u => u.Id);
        }
    }
}