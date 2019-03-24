using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;

namespace SelfHostedAPI
{
    public class WebApiDbContext : DbContext
    {
        public WebApiDbContext() : base("name=WebApiDbEntities")
        {
             
        }

        public System.Data.Entity.DbSet<SelfHostedAPI.Product> Product { get; set; }
         
    }
}
