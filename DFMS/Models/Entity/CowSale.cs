using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DFMS.Models.Entity
{
    public class CowSale
    {
        public virtual int CowSaleID { get; set; }
        public virtual int CowSaleBuyerID { get; set; }
        public virtual int CowSaleCowID { get; set; }
        public virtual int CowSaleSellerID { get; set; }
        public virtual DateTime CowSaleDate { get; set; }
        public virtual int CowSalePrice { get; set; }
        public virtual string CowSalePaymentMethod { get; set; }

    }
}