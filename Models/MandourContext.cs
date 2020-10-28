using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
namespace Mandour.Models
{
    public class MandourContext:DbContext
    {
        public DbSet<Todos> Todos { get; set; }
    }
}