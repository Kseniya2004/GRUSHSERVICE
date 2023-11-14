using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace GRUSHSERVICE.Classes
{
    internal class ConnectHelper : DbContext
    {
        public static GRUSHSERVICE_db_Entities db = new GRUSHSERVICE_db_Entities();
        public DbSet<Employee> employees { get; set; }
        public ConnectHelper() : base("DefaultConnection")
        { }
    }
}
