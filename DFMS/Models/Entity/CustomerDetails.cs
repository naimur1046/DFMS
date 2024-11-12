using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DFMS.Models.Entity
{
    public class CustomerDetails
    {
        public virtual int CustomerID { get; set; }
        public virtual string CustomerName { get; set; }
        public virtual string CustomerNumber { get; set; }
        public virtual string CustomerPassword { get; set; }
        public virtual string CustomerEmail { get; set; }
        public virtual string CustomerLocation { get; set; }
        public virtual string CustomerType { get; set; }



    }
}
