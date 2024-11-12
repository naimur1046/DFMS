using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DFMS.Models.Entity
{
    public class MilkSale
    {
        public virtual int MilkSaleID { get; set; }
        public virtual int MilkSaleCustomerID { get; set; }
        public virtual int MilkSaleSallerID { get; set; }
        public virtual string MilkSaleType { get; set; }
        public virtual DateTime MilkSaleDate { get; set; }
        public virtual double MilkSaleQuantity { get; set; }
        public virtual int MilkSalePricePerLiter { get; set; }
        public virtual double MilkSaleTotalAmount { get; set; }
        public virtual string MilkSalePaymentMethod { get; set; }
        public virtual string MilkSaleLocation { get; set; }




    }
}